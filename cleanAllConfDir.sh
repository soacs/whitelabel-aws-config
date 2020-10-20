
#!/usr/bin/env bash

 echo 'START: Clean config output directory'

 rm  ./output/dynamodb-tables/*.json
 rm  ./output/aws-code/*.zip
 rm  ./output/api-code/*.json
 rm  ./output/aws-parameters/*
 rm  ./output/aws-secrets/*
 rm  ./output/base-path-mappings/*
 rm  ./output/listings/*

  echo 'END: Clean config output directory'
