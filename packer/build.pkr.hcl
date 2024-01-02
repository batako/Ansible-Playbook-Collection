build {
  sources = [
    "source.amazon-ebs.main"
  ]

  provisioner "shell" {
    inline = [
      "sudo dnf install -y python3-pip",
      "pip install ansible",
    ]
  }

  provisioner "ansible-local" {
    playbook_file = "../install-node-via-nvm.yml"
  }

  provisioner "shell" {
    inline = [
      "pip uninstall -y ansible",
      "sudo dnf erase -y python3-pip",
    ]
  }
}
