

resource "aws_elb" "frontend_elb" {
  name               = "frontend-elb"
  subnets            = var.public_subnets
  // ELB configuration...


  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

}


resource "aws_security_group" "frontend_sg" {
  vpc_id = var.vpc_id
  // Security group configuration...
}

// Additional frontend resources...



  