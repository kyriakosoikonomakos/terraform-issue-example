
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}


module "common" {
    source = "/tmp/tmp_tf/tf-modules/common"

    secret_key = "${var.secret_key}"
    access_key = "${var.access_key}"
}

resource "aws_security_group" "app_sg" {
    name = "tf_app_srv_sg"
    description = "tf_app_srv_sg"

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        security_groups = ["${module.common.common_sg_id}"]
    }

    tags {
        Name = "tf_app_srv_sg"
    }

}
