
#!/usr/bin/env bash

echo 'Upload DAP tables to S3 on SBX'

aws s3 cp ../output/base-path-mappings s3://dwpdeploy/aws-base-path-mappings --recursive

