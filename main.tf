
provider "aws"{
region = "us-east-1"                                    #preffered region
#access_key = "*****"                   #my personal key. Not to be shared, only introduce if not working
#secret_key = "*****"
}
        resource "aws_security_group" "launch-wizard-2" {
           name_prefix = "launch-wizard-2-"

          // Allow all inbound traffic
          ingress {
            from_port   = 0
            to_port     = 65535
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
   }

          // Allow all outbound traffic
          egress {
           from_port   = 0
           to_port     = 65535
           protocol    = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
   }
}
        resource "aws_instance" "server" {
           ami = "ami-0cd59ecaf368e5ccf"
           instance_type = "t2.micro"                                         #preffered instance type
           key_name = "ubuntukey"
           count = 2                                                                    #Number of servers to be created
          // Associate the security group with the instance
          security_groups = [aws_security_group.launch-wizard-2.name]
"main.tf" 43L, 1210B                                                                                                                           4,20          Top
