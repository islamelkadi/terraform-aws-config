config {
  # Enable module inspection
  call_module_type = "all"
  
  # Force provider version constraints
  force = false
  
  # Disable color output
  disabled_by_default = false
}

# AWS plugin
plugin "aws" {
  enabled = true
  version = "0.35.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

# Terraform plugin
plugin "terraform" {
  enabled = true
  version = "0.10.0"
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}

rule "terraform_documented_outputs" {
  enabled = true
}

rule "terraform_documented_variables" {
  enabled = true
}
