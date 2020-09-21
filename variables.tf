variable "token" {}
variable "organization" {}
variable "hostname" {}
variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "cdirs_acesso_remoto" {
    type = "list"
    default = ["187.3.219.219/32","187.3.219.218/32"]

}