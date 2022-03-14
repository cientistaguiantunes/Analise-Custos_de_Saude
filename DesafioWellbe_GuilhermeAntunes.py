#!/usr/bin/env python
# coding: utf-8

# <img src="https://media-exp3.licdn.com/dms/image/C4D0BAQFayZFs1W_5vw/company-logo_200_200/0/1614791373135?e=1634169600&v=beta&t=hY4nTFpQwketOonFQmVEClmSeW3Zqix49-BeNjNcRWw" align=center>
# 
# <h1>Desafio análise de dados - Wellbe</h1>
# Desenvolvido por <b>Guilherme Antunes</b>

# In[343]:


#importar bibliotecas
get_ipython().run_line_magic('matplotlib', 'inline')
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
plt.style.use('ggplot')
from datetime import datetime
import sqlalchemy


# In[344]:


#carregar csv / txt
df = pd.read_csv(r"D:\Guilherme\Desafio2.txt", sep=';', encoding='latin1')
df.head()


# In[345]:


#Tipos de variáveis
df.dtypes


# In[346]:


#Quantidade de linhas e colunas
df.shape


# In[347]:


#Substitui campo vazio em Data do Atestado
df["Data do Atestado"].fillna('-', inplace=True)


# In[348]:


#Substitui traço por uma data aleatória
df['Data do Atestado'] = df['Data do Atestado'].apply(lambda x: str(x).replace("-",'29/05/2019'))


# In[349]:


#Converter data do atestado para o datetime usando to_datetime
df['Data do Atestado'] = pd.to_datetime(df['Data do Atestado'], format="%d/%m/%Y")


# In[350]:


#Substituindo a vírgula para ponto, para poder converter para float
df['Custo do afastamento'] = df['Custo do afastamento'].apply(lambda x: str(x).replace(",","."))


# In[351]:


#Atribuindo tipo float para a coluna Custo do afastamento
df['Custo do afastamento'] = df['Custo do afastamento'].astype('float64')


# In[352]:


#Média com todos os valores do custo para verificar se deu certo a conversão
df['Custo do afastamento'].mean()


# In[353]:


#Deletar a coluna identificação que não possui nenhuma informação
del df['Identificação']


# In[354]:


#Substitui campo vazio por outros em Cargo
df["Cargo"].fillna('Outros', inplace=True)


# In[355]:


#Substitui campo vazio por outras em Especialidade
df["Especialidade"].fillna('Outras', inplace=True)


# In[356]:


#Substitui campo vazio por outros em Motivos
df["Motivo"].fillna('Outros', inplace=True)


# In[357]:


#Substitui campo vazio por 310 em custo do afastamento, valor em comum entre Especialidade e Motivo
df["Custo do afastamento"].fillna(310, inplace=True)


# In[358]:


#Inserindo a coluna ID no início 
df.insert(0, 'ID', value=range(len(df)), allow_duplicates=False)


# In[359]:


df.dtypes


# In[360]:


df.head()


# In[413]:


#Alterando os nomes das colunas
df.columns = ['id', 'codigo', 'custo', 'funcionario', 'cargo', 'data_do_afastamento', 'especialidade', 'motivo']


# In[362]:


#conexão com o banco de dados
conectar = sqlalchemy.create_engine('mysql+pymysql://root@localhost:3306/desafio_wellbe')


# In[363]:


#Enviando dataframe para o banco
df.to_sql(
    name = 'afastamentos',
    con = conectar,
    index = False,
    if_exists ='append'
)


# In[364]:


#Lendo a tabela afastamentos do banco
df = pd.read_sql_table('afastamentos', conectar)


# In[365]:


df.head()


# 
# <b>1) Qual departamento gastou mais em afastamentos?<b>

# In[375]:


#Cria a consulta SQL selecionando o cargo, somando o custo correspondente e ordenando de maneira decrescente
consulta1 = '''SELECT cargo AS Cargo, SUM(custo) AS Custo 
FROM afastamentos GROUP BY cargo ORDER BY custo desc'''


# In[376]:


#Lê a consulta criada guardando em uma variável
resultado1 = pd.read_sql_query(consulta1, conectar)


# In[377]:


#mostra o departamento que mais gastou em ordem decrescente 
display(resultado1)


# <b>2) Qual especialidade teve o maior gasto?<b>

# In[437]:


#Cria a consulta SQL selecionando especialide, somando o custo correspondente e ordenando de maneira decrescente
consulta2 = '''SELECT especialidade AS Especialidade, SUM(custo) AS Custo 
FROM afastamentos GROUP BY Especialidade ORDER BY custo desc'''


# In[435]:


#Lê a consulta criada guardando em uma variável
resultado2 = pd.read_sql_query(consulta2, conectar)


# In[409]:


#mostra a especialidade que mais gastou em ordem decrescente 
display(resultado2)


# <b>3) Qual foi o principal motivo de afastamento?<b>

# In[378]:


#Cria a consulta SQL selecionando e contando o motivo e ordenando de maneira decrescente
consulta3 = '''SELECT motivo AS Motivo, count(motivo) AS Quantidade 
FROM afastamentos GROUP BY Motivo ORDER BY Quantidade desc''' 


# In[379]:


#Lê a consulta criada guardando em uma variável
resultado3 = pd.read_sql_query(consulta3, conectar)


# In[380]:


#mostra o principal motivo de afastamento em ordem decrescente 
display(resultado3)


# In[415]:


#Salva em csv no disco planilha atualizada
df.to_csv('Desafio_modificado.csv', encoding = 'utf-8', index = False)


# In[417]:


dataset = pd.read_csv('Desafio_modificado.csv')
dataset.head()


# In[ ]:




