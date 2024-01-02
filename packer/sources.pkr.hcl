source "amazon-ebs" "main" {
  ami_name = "${var.ami_name} ${formatdate("YYYY-MM-DD-hhmm", timeadd(timestamp(), "9h"))}"

  region        = var.region
  instance_type = var.instance_type
  ssh_username  = var.ssh_username

  source_ami_filter {
    filters = {
      name = "al2023-ami-2023.*.*-kernel-*-x86_64"
    }
    owners      = ["amazon"]
    most_recent = true
  }

  tags = {
    Packer      = "true"
    Environment = var.environment
  }
}

source "null" "example" {
  communicator = "none"
}
