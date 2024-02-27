import boto3
import json

def get_s3_metadata(bucket_name, data_key=None):
    metadata = {}

    try:
        # Create an S3 client using the default AWS credentials and region
        s3_client = boto3.client('s3')

        # Get the metadata of the specified S3 bucket
        bucket_metadata = s3_client.head_bucket(Bucket=bucket_name)

        if data_key:
            metadata[data_key] = bucket_metadata[data_key]
        else:
            metadata = bucket_metadata

    except Exception as e:
        metadata["error"] = str(e)

    return metadata

def main():
    bucket_name = input("Enter the name of the S3 bucket: ")
    data_key = input("Enter the specific data key (optional): ")

    metadata = get_s3_metadata(bucket_name, data_key)

    try:
        json_output = json.dumps(metadata, indent=2)
        print(json_output)
    except json.JSONDecodeError:
        print(metadata)

if __name__ == "__main__":
    main()
