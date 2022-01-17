#!/usr/bin/env bash

set -e

architecture="$(dpkg --print-architecture)"

# Install terraform

wget https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_linux_$architecture.zip -O /tmp/terraform.zip
unzip /tmp/terraform.zip -d /usr/local/bin
rm /tmp/terraform.zip

# Install terragrunt

wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.18/terragrunt_linux_$architecture -O /usr/local/bin/terragrunt
chmod +x /usr/local/bin/terragrunt
