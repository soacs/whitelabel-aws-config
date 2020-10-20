
#!/usr/bin/env bash

echo 'START: Create S3 dwpdeploy buckets'

aws s3 mb s3://dwpdeploy/aws-apis 
aws s3 mb s3://dwpdeploy/aws-base-path-mappings 
aws s3 mb s3://dwpdeploy/aws-lambdas 
aws s3 mb s3://dwpdeploy/aws-listings 
aws s3 mb s3://dwpdeploy/aws-parameters 
aws s3 mb s3://dwpdeploy/aws-secrets 
aws s3 mb s3://dwpdeploy/aws-dynamodb-tables 

echo 'START: Create S3 dwpdeploy buckets'
