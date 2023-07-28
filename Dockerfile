# Usa a imagem base do Python
FROM python:3.10

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo de requisitos e instala as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código do projeto para o contêiner
COPY . .

# Define o comando para executar a aplicação
CMD ["python", "app.py"]
