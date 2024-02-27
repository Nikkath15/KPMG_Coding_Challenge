# KPMG Coding Challenges

This repository contains solutions to the coding challenges presented by KPMG.

## Challenge #1: 3-Tier Environment Setup

### Approach:
I chose AWS to set up a 3-tier environment. The infrastructure is defined using Infrastructure-as-Code Tool, and the code can be found in the Terraform-3-tier-aws/.

### Reproducibility:
To reproduce the environment, follow these steps:
1. Install terraform.
2. Clone this repository.
3. Navigate to the Terraform-3-tier-aws/
4. Execute terraform init , terraform plan , terraform apply to create the 3-tier environment.

## Challenge #2: Query Instance Metadata

### Language and Implementation:
I used python to write a script s3_bucket_metadata.py that queries the metadata of an instance in AWS s3. The output is formatted as JSON.

### Usage:
To use the script:
1. Install python.
2. Execute "python s3_bucket_metadata.py" and provide necessary input.

### Bonus Points:
The script allows for retrieving a particular data key individually.

## Challenge #3: Nested Object Value Retrieval

### Language and Implementation:
I implemented a function in python to retrieve a value from a nested object based on a given key. The code can be found in nested_object.py.

### Usage:
To use the function:
1. Import the function into your code.
2. Call the function with the object and key as parameters.

### Tests:
To run the tests, execute "python nested_object.py"
