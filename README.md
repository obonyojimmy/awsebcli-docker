# AWS EB CLI DOCKER

Containerized Elastic Beanstalk Command Line Interface on alpine to avoid
requiring the awsebcli to be installed on CI machines.

## Usage

**docker pull obonyojimmy/awsebcli**

```
docker run -it \
  -e "AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID> \
  -e "AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY> \
  -e "AWS_DEFAULT_REGION=<AWS_DEFAULT_REGION> \
  -v "$(pwd):/project" \
  obonyojimmy/awsebcli <eb cmd>
```

## References

EB CLI Docs: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html
