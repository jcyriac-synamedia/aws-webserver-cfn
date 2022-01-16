TEMPLATE_FILE_NAME=webserver-cfn.yml
STACK_NAME=jeevan-webservers
AWS_REGION=us-east-1
AWS_PROFILE=prod-apptest3

aws cloudformation deploy \
    --profile $AWS_PROFILE \
    --region $AWS_REGION \
    --template-file $TEMPLATE_FILE_NAME \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name $STACK_NAME