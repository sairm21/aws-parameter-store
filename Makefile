default:
	@git pull
	@terraform init
	@terraform plan
	@terraform apply -auto-approve

