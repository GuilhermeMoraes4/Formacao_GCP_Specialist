# Projeto - Deploy de Aplicação com Instance Class Personalizado e Auto Scalling

## Resumo do repositório

Este projeto é uma aplicação de exemplo usando Google App Engine. Ele foi baseado no repositório oficial do Google Cloud Platform. 


## Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Clonando o Repositório

Abra o terminal do Google Cloud Shell no console do GCP ou a aplicação desktop do Google Cloud SDK e execute os seguintes comandos: "git clone https://github.com/GoogleCloudPlatform/python-docs-samples.git" para clonar o repositório e o comando: "cd python-docs-samples/appengine/standard/hello_world" para entrar na pasta.

## Modificando Configurações

Edite o arquivo app.yaml para ajustar as configurações desejadas, como instance_class e automatic_scaling.

## Deploy da Aplicação

Após a edição utilize o comando: "gcloud app deploy" para realizar o deploy da aplicação.

## Deploy da Aplicação

Após o deploy, verifique o status da aplicação no Console do Google Cloud em: App Engine >> Serviços, pode também ser validado o consumo da aplicação em App Engine >> Instâncias.

## Observção:

Todo o processo foi documentado nos screenshots que acompanham esse README.

## Desenvolvedor :octocat:
Guilherme Moraes
