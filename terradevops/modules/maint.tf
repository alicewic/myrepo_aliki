provider "aws" {
    region = "us-east-1"
}

module "computemodule" {
    source = "./compute/"
}

module "databasemodule" {
    source = "./database/"
}

module "networdmodule" {
    source = "./network/" 
}

module "storagemodle" {
    source = "./storage/" 
}

