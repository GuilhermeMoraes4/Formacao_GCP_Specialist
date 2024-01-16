# Projeto - Clusters Kubernetes com aplicação de Microserviço.

## Resumo do repositório

Este repositório contém recursos para implantar o aplicativo "Online Boutique" no Google Kubernetes Engine (GKE) do Google Cloud. O "Online Boutique" é um aplicativo de referência para microservices, demonstrando práticas recomendadas para o desenvolvimento e implantação de arquiteturas de microsserviços na nuvem.

## Pré-Requisitos

Antes de começar, certifique-se de atender aos seguintes requisitos:

1. Uma conta no Google Cloud Platform (GCP).
2. Um projeto configurado no GCP.
3. Ambiente de shell com gcloud, git e kubectl instalados.

## Clone o repositório

Execute os seguintes comandos para clonar o repositório e entrar na pasta correspondente: "git clone https://github.com/GoogleCloudPlatform/microservices-demo" e "cd microservices-demo/".

## Configure o Projeto e a Região

Utilize os comandos abaixo para configurar o projeto e a região (substitua <ID_DO_PROJETO> pelo ID do seu projeto criado no GCP):

"export PROJECT_ID=<ID_DO_PROJETO>
export REGION=us-central1

gcloud services enable container.googleapis.com \
  --project=${PROJECT_ID}".

## Crie e Configure o Cluster GKE

Utilize o seguinte comando para criar e configurar o Cluster: "gcloud container clusters create-auto online-boutique \
  --project=${PROJECT_ID} --region=${REGION}".

## Implante o Online Boutique no Cluster

Utilize o seguinte comando para implantar a aplicação online: "kubectl apply -f ./release/kubernetes-manifests.yaml".

## Obtenha os Pods para verificação do status da aplicação

Aguarde alguns minutos para a aplicação ficar disponível. Após isso, utilize o comando abaixo para verificar o status dos Pods: "kubectl get pods".

## Acesse o Front-end da aplicação pela web

Utilize o seguinte comando para obter o URL de acesso ao frontend da aplicação online: "kubectl get service frontend-external | awk '{print $4}'".

## Observação:

Todo o passo a passo do Readme pode ser encontrado nos screenshots que acompanham este repositório.

## Desenvolvedor :octocat:
Guilherme Moraes