resource "aws_security_group" "test" {
  name = "allow_ports"
  #description = "creation d'une reglen firewall pour les traffics entrans et sortants"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    description = "Traffic  entrants ssl"
    from_port = 443
    to_port = 443
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Traffic sortants ssl"
    from_port   = 443
    to_port     = 443
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    description = "Traffic  entrants http "
    from_port = 80
    to_port = 80
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    description = "Traffic sortants http"
    from_port   = 80
    to_port     = 80
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Traffic  entrants ssh"
    from_port = 22
    to_port = 22
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Traffic sortants ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
      ingress {
    description = "Traffic  entrants loadbalancer "
    from_port = 8080
    to_port = 8080
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    description = "Traffic sortants loadbalancer"
    from_port   = 8080
    to_port     = 8080
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

        ingress {
    description = "Traffic  entrants appPortfolio "
    from_port = 3000
    to_port = 3000
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    description = "Traffic sortants appPortfolio"
    from_port   = 3000
    to_port     = 3000
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

        ingress {
    description = "Traffic  entrants appPortfolio "
    from_port = 3030
    to_port = 3030
    protocol = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    description = "Traffic sortants appPortfolio"
    from_port   = 3030
    to_port     = 3030
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Firewall"
  }
}