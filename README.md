# aws_cli_with_mfa

This is for IAM users with MFA enabled.

- Download and install AWS CLI
- Replace the arn in the script with what ever arn you have in your aws IAM account.
  * ex: arn:aws:iam::812144555506:mfa/mohitprasanth@joveo.com
- Download the sts script in this repo.
- Create alias in your .zshrc or .bashrc

```
alias sts='echo "Enter Token:";read token;. ~/Documents/aws/sts.sh $token'
```
