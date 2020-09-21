provider "aws"{
    region = "ap-south-1"
    profile = "terraformprofile"
}

resource "aws_db_instance" "mydb1" {
  allocated_storage        = 10
  engine                   = "postgres"
  engine_version           = "9.5.4"
  identifier               = "mydb1"
  instance_class           = "db.t2.micro"
  multi_az                 = false
  name                     = "mydb1"
  password                 = "${data.aws_ssm_parameter.password.value}"
  port                     = "${data.aws_ssm_parameter.port.value}"
  username                 = "${data.aws_ssm_parameter.username.value}"
  publicly_accessible      = true
  storage_encrypted        = false
  vpc_security_group_ids   = ["sg-095eb62a9196326dd"]
  skip_final_snapshot      = true

}
