module "ec2"{
    source = "./ec2"
}
module "vpc" {
    source = "./vpc"
   
}
module "s3" {
    source = "./s3"
  
}
module "eks" {
    source = "./eks"
    vpc_id = module.vpc.vpc_id
    private_subnets = module.vpc.private_subnets
  
}