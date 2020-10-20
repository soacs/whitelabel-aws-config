
#!/usr/bin/env bash

echo 'START: Upload all to S3 dwpdeploy buckets'

cd ./uploading

echo 'Uploading APIs'
/bin/bash ./uploadApisToS3.sh

echo 'Uploading Lambdas'
/bin/bash ./uploadLambdaZipsToS3.sh

echo 'Uploading Tables'
/bin/bash ./uploadTablesToS3.sh

echo 'Uploading Parameters'
/bin/bash ./uploadParametersToS3.sh

echo 'Uploading BasePathMappings'
/bin/bash ./uploadBasePathMappingsToS3.sh

echo 'Uploading Secrets'
/bin/bash ./uploadSecretsToS3.sh

echo 'Uploading Listings'
/bin/bash ./uploadListingsToS3.sh


echo 'START: Upload all to S3 dwpdeploy buckets'

