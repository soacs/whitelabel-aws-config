
#!/usr/bin/env bash

echo 'Upload Lambda zips to S3 on SBX'

aws s3 cp ../output/aws-code s3://dwpdeploy/aws-lambdas --recursive
