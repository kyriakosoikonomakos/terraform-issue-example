module "app" {
    source = "/tmp/tmp_tf/tf-modules/app"
    secret_key = "${var.secret_key}"
    access_key = "${var.access_key}"
}
