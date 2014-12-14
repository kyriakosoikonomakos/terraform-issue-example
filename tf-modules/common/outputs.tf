output "common_sg_name" {
    value = "${aws_security_group.td_common_sg.name}"
}

output "common_sg_id" {
    value = "${aws_security_group.td_common_sg.id}"
}
