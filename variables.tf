output "ipaddress" {
    value = aws_instance.sushil_ec2
}

output "sg" {
   value = aws_security_group.securitygroup1.name 
}

variable "az" {
    type = string
    description = "Specify the AZ to create resource"
   
}

variable "instance_type" {
    
    description = "Enter instance type"
   
}