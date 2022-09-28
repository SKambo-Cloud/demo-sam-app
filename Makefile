.PHONY: build

build:
	sam build

deploy-infra:
	sam build && aws-vault exec KamboCloud --no-session -- sam deploy

deploy-site:
	aws-vault exec KamboCloud --no-session -- aws s3 sync ./resume-site s3://kambo-demo-site