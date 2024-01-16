# Arquitetura da Organização - MoraesCorp

Este projeto Terraform foi desenvolvido para criar e organizar a estrutura de projetos no Google Cloud Platform (GCP). Ele utiliza a linguagem Terraform para definir a infraestrutura como código, facilitando a criação e gerenciamento de recursos na nuvem.

## Pré-requisitos

Antes de executar este código, certifique-se de ter os seguintes pré-requisitos:

1. **Conta no Google Cloud Platform (GCP):** É necessário ter uma conta no GCP e configurar as credenciais de serviço. Certifique-se de que o arquivo `serviceaccount.yaml` contendo as credenciais esteja presente no mesmo diretório do código Terraform.

2. **Arquivo de Variáveis de Ambiente (.env):** Crie um arquivo chamado `.env` contendo as variáveis de ambiente necessárias para o projeto. Certifique-se de incluir a variável `organization` com o identificador da organização no GCP e a variável `b_c` com o identificador da conta de faturamento.

## Como Executar o Código

Siga as etapas abaixo para executar o código Terraform e criar a estrutura de projetos no GCP:

1. **Inicialize o Terraform:**
   Execute o comando para inicializar o Terraform no diretório do projeto: "terraform init"

2. **Planeje as Mudanças:**
Execute o comando para verificar as alterações que serão feitas na infraestrutura: "terraform plan"

3. **Aplicar as Mudanças:**
Execute o comando para aplicar as alterações e criar os projetos no GCP: "terraform apply"

4. **Confirmação:**
Confirme a execução digitando "yes" quando solicitado.

Após a conclusão dessas etapas, a estrutura de projetos será criada no GCP conforme definido no código Terraform.

Lembre-se de revisar e adaptar as configurações conforme necessário para atender aos requisitos específicos do seu projeto. Para mais informações sobre o Terraform e o Google Cloud, consulte a documentação oficial do Terraform e do Google Cloud.

## Desenvolvedor :octocat:
Guilherme Moraes

