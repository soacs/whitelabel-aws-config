
#!/usr/bin/env bash

echo 'Upload AWS Parameters to S3 on SBX'

aws s3 cp ../output/aws-parameters s3://dwpdeploy/aws-parameters --recursive
