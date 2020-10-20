
#!/usr/bin/env bash

echo 'START: Clean S3 dwpdeploy buckets'

aws s3 rm s3://dwpdeploy/aws-apis --recursive
aws s3 rm s3://dwpdeploy/aws-base-path-mappings --recursive
aws s3 rm s3://dwpdeploy/aws-lambdas --recursive
aws s3 rm s3://dwpdeploy/aws-listings --recursive
aws s3 rm s3://dwpdeploy/aws-parameters --recursive
aws s3 rm s3://dwpdeploy/aws-secrets --recursive
aws s3 rm s3://dwpdeploy/aws-dynamodb-tables --recursive

echo 'END: Clean S3 dwpdeploy buckets'
