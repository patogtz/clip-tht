resource "aws_db_instance" "default" {
    engine               = "mysql"
    engine_version       = "5.7"
    parameter_group_name = "default.mysql5.7"

    allocated_storage    = var.storage_size
    instance_class       = var.rds_instance_class
    name                 = var.instance_name
    username             = var.rds_username
    password             = var.rds_password
    
    db_subnet_group_name = aws_subnet.private_rds.name

    skip_final_snapshot  = true
}