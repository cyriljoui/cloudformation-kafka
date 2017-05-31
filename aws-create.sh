#/bin/sh
aws cloudformation create-stack \
    --template-body file://kafka.json \
    --stack-name KAFKA-BROKER1 \
    --capabilities CAPABILITY_IAM \
    --parameters \
        ParameterKey=KeyName,ParameterValue=kafka \
        ParameterKey=VpcId,ParameterValue=vpc-171ad470 \
        ParameterKey=Subnets,ParameterValue='subnet-e43f35bc' \
	ParameterKey=ExhibitorLoadBalancer,ParameterValue='http://internal-KAFKAZOO1-PrivateE-D1A2XR1MEDMH-609120164.eu-west-1.elb.amazonaws.com' \
        ParameterKey=AdminSecurityGroup,ParameterValue=sg-f9122d80
