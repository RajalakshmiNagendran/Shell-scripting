import boto3

client = boto3.client('iam')
response = client.get_account_password_policy()
if response['PasswordPolicy']['MaxPasswordAge'] < 3:
    response = client.send_email(
            Destination={
                'BccAddresses': [
                    ],
                'CcAddresses': [
                    ],
                'ToAddresses': [
                    'rajalakshminagendran95@gmail.com'
                    ],
                },
            Message={
                'Body': {
                    'Html': {
                        'Charset': 'UTF-8',
                        'Data': 'This message body contains HTML formatting. It can, for example, contain links like this one: <a class="ulink" href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide" target="_blank">Amazon SES Developer Guide</a>.',
                        },
                    'Text': {
                        'Charset': 'UTF-8',
                        'Data': 'This is the message body in text format.',
                        },
                    },
                'Subject': {
                    'Charset': 'UTF-8',
                    'Data': 'Test email',
                    },
                },
            ReplyToAddresses=[
                ],
            ReturnPath='',
            ReturnPathArn='',
            Source='sender@example.com',
            SourceArn='',
            )
    print(response)
else:
    print("The MaxPasswordAge is greater value")
