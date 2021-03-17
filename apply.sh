terraform apply -input=false -auto-approve
terraform output -json > infra.json
aws s3 cp infra.json s3://global-tf-states/common/infra.json 