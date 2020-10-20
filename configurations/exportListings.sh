#!/usr/bin/env bash

echo 'Export Release Listings'

echo '{ "Release": "RB-2.3.3", "Environment": "DAP"' > list_of_attributes

aws secretsmanager list-secrets | grep Name | cut -d: -f2 > list_secrets
echo ' "SecretNames": [' > list_of_secrets
cat  list_secrets >> list_of_secrets
echo '],' >> list_of_secrets
rm list_secrets

aws apigateway get-rest-apis | grep name  | cut -d: -f2 > list_apis
echo '"ApiNames": [' > list_of_apis
cat  list_apis >> list_of_apis
echo '],' >> list_of_apis
rm list_apis


aws lambda list-functions | grep FunctionName  | cut -d: -f2 >  list_lambdas
echo '"LambdaNames": [' > list_of_lambdas
cat  list_lambdas >> list_of_lambdas
echo '],' >> list_of_lambdas
rm list_lambdas


aws dynamodb list-tables > list_tables
sed '1d' list_tables > list_of_tables
rm list_tables


cat list_of_attributes list_of_secrets list_of_apis list_of_lambdas list_of_tables > list_of_all
python -m json.tool list_of_all > list_of_all_formatted
