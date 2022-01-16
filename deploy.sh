TEMPLATE_FILE_NAME=webserver-cfn.yml
STACK_NAME=jeevan-webserver
AWS_REGION=us-east-1
AWS_PROFILE=prod-apptest3
STACK_ACTION=${1:-update}

aws cloudformation ${STACK_ACTION}-stack \
    --profile $AWS_PROFILE \
    --region $AWS_REGION \
    --template-body file://$TEMPLATE_FILE_NAME \
    --stack-name $STACK_NAME