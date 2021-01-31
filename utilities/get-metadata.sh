#!/bin/bash

key=${1}
meta_data_url=http://169.254.169.254/latest/meta-data/

curl -s http://169.254.169.254/latest/dynamic/instance-identity/document --output metadata
 
