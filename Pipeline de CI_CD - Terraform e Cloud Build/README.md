# Pipeline CI/CD Cloud Build + Terraform

Este repositório contém um exemplo de integração entre o Cloud Build e o Terraform para automatizar a criação e gerenciamento de recursos no Google Cloud Platform (GCP).

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes requisitos:

1. Uma conta no Google Cloud Platform (GCP).
2. Um projeto configurado no GCP.
3. O Terraform instalado localmente. [Download do Terraform](https://www.terraform.io/downloads.html).
4. Uma conta de serviço com as permissões necessárias configuradas para interagir com o GCP.

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

1. **Terraform - Instancia:** Contém o código Terraform para criar uma instância no GCP.

   - **instance.tf:** Define a configuração da instância no GCP.

2. **Configuração do Trigger - cloudbuild:** Contém os arquivos de configuração do Cloud Build.

   - **main.tf:** Configuração principal do Terraform, incluindo o provedor GCP e o backend GCS para armazenamento do estado.
   - **cloudbuild.yaml:** Arquivo de configuração do Cloud Build com um passo para aplicar as configurações do Terraform.

3. **Pré-requisitos - main:** Contém as variáveis e outputs utilizados no código Terraform.

   - **outputs.tf:** Define as saídas do Terraform, como o endereço IP da instância.
   - **variables.tf:** Define as variáveis usadas no código, como o nome da rede e o centro de custo de TI.

##  Executando o Pipiline

1. **Configuração Inicial:** Certifique-se de ter todas as credenciais e permissões necessárias configuradas no GCP, além de ter um repósitório criado no GCP e configurado no Git conforme demonstrado no screenshot.

2. **Configuração do Terraform:** Ajuste as configurações no arquivo main.tf conforme necessário, como o nome do projeto, região, zona, etc.

3. **Execução do Pipiline:** O Cloud Build será acionado automaticamente quando ocorrerem alterações no repositório.
Alternativamente, você pode acionar manualmente o pipeline usando comandos como gcloud builds submit.

4. **Visualização dos Resultados:** Após a conclusão do pipeline, verifique o console do Cloud Build para visualizar os logs e resultados da execução.

## Desenvolvedor :octocat:
Guilherme Moraes