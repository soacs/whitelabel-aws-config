
#!/usr/bin/env bash

echo 'Upload AWS listings to S3 on SBX'

aws s3 cp ../output/listings s3://dwpdeploy/aws-listings --recursive
