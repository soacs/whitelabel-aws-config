# Whitelabel Aws Configuration

AWSconfiguration scripts used for Folio WhiteLabel project

This is the project that contains all information needed for the White Label AWS project. It contains, bash scripts 
and AWS CLI based on

## Contents:

1. bin/scripts - all scripts used to export SBX AWS serverless configuration to the bin/scripts/output directory. Including all scripts
used for exporting development configurations, stashing and uploading to SBX S3 bucket.


## Useful scripts: 
1. **bin/scripts/exportAllConfig.sh** - AWS Serverless export - generates all config in output folders.
1. **bin/scripts/uploading/uploadAllConfigToS3.sh** - uploads all configuration files and lisings of all the names of resources that are associted with a release.

## Bash Script runs:
1. Run *`./exportAllConfig.sh`* to clean output local directories and export all AWS environment from AWS SBX to local bin/scripts/output directory 
1. Run *`./uploadAllConfigToS3.sh`* uploads all config reources in bin/scripts/output directory and uploads them to S3://dwpdeploy directories


The result of the script is stashed configurations for SBX and deployment configuration information in the following SBX S3 buckets
under **s3://dwpdeploy**:


1. `./aws-apis` apis for aws-gateway
1. `./aws-lambdas` lambda functions ZIPz
1. `./aws-secrets` secrets data
1. `./aws-parameters` parameter store data
1. `./aws-base-path-mappings` url mappings 
1. `./aws-listings` files that list all functions named deployed for  release.


This project is purely bash and AWS CLI and does not depend on ANG or NODE and does not need a server.

