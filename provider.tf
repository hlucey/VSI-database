variable "softlayer_username" {
  description = "Enter your IBM Infrastructure (SoftLayer) full username, you can get this using: https://cloud.ibm.com/iam/users/"
}

variable "softlayer_api_key" {
  description = "Enter your IBM Infrastructure (SoftLayer) API key, you can get this using: https://cloud.ibm.com/iam/users/"
}

variable "ibmcloud_api_key" {
  description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://cloud.ibm.com/iam#/apikeys"
}

variable "region" {
   default = "eu-gb"
}



provider "ibm" {
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key  = "${var.softlayer_api_key}"
  ibmcloud_api_key    = "${var.ibmcloud_api_key}"
  region             = "${var.region}"
}
