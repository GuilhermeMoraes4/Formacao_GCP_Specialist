# Provedor.

provider "google" {
  project = "moraes-corp"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = "${file("serviceaccount.yaml")}"
}

# Variáveis do ambiente
data "external" "env_vars" {
  program = ["cat", ".env"]
}

# Arquitetura das pastas:

resource "google_folder" "comercial_vendas" {
  display_name = "Comercial/Vendas"
  parent       = data.external.env_vars.result["organization"]
}

resource "google_folder" "Mobile" {
  display_name = "Mobile"
  parent       = google_folder.comercial_vendas.id
}

resource "google_folder" "Desenvolvimento_mobile" {
  display_name = "Desenvolvimento_mobile"
  parent       = google_folder.Mobile.id
}

resource "google_folder" "Producao_mobile" {
  display_name = "Producao_mobile"
  parent       = google_folder.Mobile.name
}

resource "google_folder" "ERP" {
  display_name = "ERP"
    parent     = "google_folder.comercial_vendas.id"

}

resource "google_folder" "Desenvolvimento_erp" {
  display_name = "Desenvolvimento_erp"
  parent       = google_folder.ERP.name
}

resource "google_folder" "Producao_erp" {
  display_name = "Producao_erp"
  parent       = google_folder.ERP.name
}

resource "google_folder" "Financeiro" {
  display_name = "Financeiro"
  parent       = data.external.env_vars.result["organization"]
}

resource "google_folder" "SalesForce" {
  display_name = "SalesForce"
  parent       = google_folder.Financeiro.name
}

resource "google_folder" "Desenvolvimento_Salesforce" {
  display_name = "Desenvolvimento_Salesforce"
  parent       = google_folder.SalesForce.name
}

resource "google_folder" "Producao_Salesforce" {
  display_name = "Producao_Salesforce"
  parent       = google_folder.SalesForce.name
}

# Projetos

resource "google_project" "moraes-salesforce-dev" {
  name       = "SalesForce-Dev"
  project_id = "moraes-salesforce-dev"
  folder_id  = google_folder.Desenvolvimento_Salesforce.name
  auto_create_network=false
  billing_account = data.external.env_vars.result["b_c"]

}

 resource "google_project" "moraes-salesforce-prod" {
   name       = "SalesForce-Prod"
   project_id = "moraes-salesforce-prod"
   folder_id  = google_folder.Producao_Salesforce.name
   auto_create_network=false
   billing_account = data.external.env_vars.result["b_c"]
 }

resource "google_project" "moraes-erp-dev" {
  name       = "erp-Dev"
  project_id = "moraes-erp-dev"
  folder_id  = google_folder.Desenvolvimento_erp.name
  auto_create_network=false
  billing_account = data.external.env_vars.result["b_c"]

}

 resource "google_project" "moraes-erp-prod" {
   name       = "erp-Prod"
   project_id = "moraes-erp-prod"
   folder_id  = google_folder.Producao_erp.name
   auto_create_network=false
   billing_account = data.external.env_vars.result["b_c"]
 }

 resource "google_project" "moraes-comercial-mobile-dev" {
  name       = "comercial-Dev"
  project_id = "moraes-comercial-mobile-dev"
  folder_id  = google_folder.Desenvolvimento_mobile.name
  auto_create_network=false
  billing_account = data.external.env_vars.result["b_c"]

}

 resource "google_project" "moraes-comercial-mobile-prod" {
   name       = "moraes-comercial-mobile-Prod"
   project_id = "moraes-comercial-mobile-prod"
   folder_id  = google_folder.Producao_mobile.name
   auto_create_network=false
   billing_account = data.external.env_vars.result["b_c"]
 }
