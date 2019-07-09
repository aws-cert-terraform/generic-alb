

resource "aws_lb" "lb" {
  name               = "${var.name}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.security_groups}"]
  subnets            = ["${var.subnets}"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "${var.log_bucket_name}"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    environment = "${var.environment}"
    project = "${var.project}"
    owner = "${var.owner}"
  }
}

 