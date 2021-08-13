unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_SESSION_TOKEN

token=$1

CREDS=$(aws sts get-session-token --serial-number arn:aws:iam::485239875118:mfa/mohitprasanth@joveo.com --token-code $token --duration 129600)

ACCES_KEY=$(echo $CREDS | python -c 'import sys, json; print json.load(sys.stdin)["Credentials"]["AccessKeyId"]')
SECRET_ACCESS_KEY=$(echo $CREDS | python -c 'import sys, json; print json.load(sys.stdin)["Credentials"]["SecretAccessKey"]')
SESSION_TOKEN=$(echo $CREDS | python -c 'import sys, json; print json.load(sys.stdin)["Credentials"]["SessionToken"]')

export AWS_ACCESS_KEY_ID=$ACCES_KEY
export AWS_SECRET_ACCESS_KEY=$SECRET_ACCESS_KEY
export AWS_SESSION_TOKEN=$SESSION_TOKEN