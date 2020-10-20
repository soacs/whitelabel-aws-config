
#!/usr/bin/env bash

echo 'Upload AWS secrets to S3 on SBX'

aws s3 cp ../output/aws-secrets s3://dwpdeploy/aws-secrets --recursive
