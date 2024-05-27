provider "alicloud" {
  region = "cn-hangzhou"
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_name           = "tf-test-eais"
  vpc_cidr           = "172.16.0.0/16"
  vswitch_name       = "tf-test-eais"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = ["cn-hangzhou-h"]
}

module "security_group" {
  source = "alibaba/security-group/alicloud"
  vpc_id = module.vpc.this_vpc_id
}

module "example" {
  source = "../.."

  #alicloud_eais_instance
  create_instance   = true
  instance_type     = "eais.ei-a6.2xlarge"
  name              = "tf-test-eais"
  security_group_id = module.security_group.this_security_group_id
  vswitch_id        = module.vpc.this_vswitch_ids[0]
  force             = var.force

}