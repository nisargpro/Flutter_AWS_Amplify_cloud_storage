const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "b4dbd3f0273146a9835e61a0540dcbef",
                    "region": "us-west-2"
                },
                "pinpointTargeting": {
                    "region": "us-west-2"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-south-1:28f756ec-38fe-49e9-b094-93ddaf82cf7d",
                            "Region": "ap-south-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-south-1_7xHQJpxr7",
                        "AppClientId": "485ggktg5su0p4v820dcrt6732",
                        "Region": "ap-south-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "driveclone2417c8dff106408dba935219c11ffce7165838-dev",
                        "Region": "ap-south-1"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "b4dbd3f0273146a9835e61a0540dcbef",
                        "Region": "us-west-2"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "us-west-2"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "driveclone2417c8dff106408dba935219c11ffce7165838-dev",
                "region": "ap-south-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';