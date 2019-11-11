# AWS CLI and kubectl in Docker

Containerized AWS CLI and kubectl on alpine to avoid requiring the aws cli and kubectl to be installed on CI machines.

## Build

```
docker build -t aws-kubectl .
```

## Usage

Configure:

```
export AWS_ACCESS_KEY_ID="<id>"
export AWS_SECRET_ACCESS_KEY="<key>"
export AWS_DEFAULT_REGION="<region>"
```
