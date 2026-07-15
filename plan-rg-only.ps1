# Test plan limited to only the 4 dev Resource Group modules.
# Run from inside the landing-zone folder: .\plan-rg-only.ps1
terraform plan `
  -var-file="environments/dev.tfvars" `
  -target=module.rg_network_primary `
  -target=module.rg_security_primary `
  -target=module.rg_monitoring_primary `
  -target=module.rg_backup_primary
