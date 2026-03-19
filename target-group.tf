resource "aws_lb_target_group" "catalogue_tg" {
  name     = "nisha-catalogue-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200-399"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "nisha-catalogue-tg"
  }
}

resource "aws_lb_target_group_attachment" "catalogue_attach" {
  target_group_arn = aws_lb_target_group.catalogue_tg.arn
  target_id        = aws_instance.web.id
  port             = 80
}