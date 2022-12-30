module "my-cluster"{
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "demo-cluster"
  version = "17.24.0"
  cluster_version = "1.20"
  subnets         = var.private_subnets
  vpc_id          = var.vpc_id

   
  worker_groups = [
    {
      name= "workernode1"
      instance_type = "t2.medium"
      asg_desired_capacity  = 1
    },

    {

      name= "workernode2"
      instance_type = "t2.medium"
      asg_desired_capacity  = 1
    }

  ]
    }
