import 'package:flutter/material.dart';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'amplifyconfiguration.dart';


import 'auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // We have an initial state and we configure it
    super.initState();

    configureAmplify();

    configureDownloader();
  }

  void configureDownloader() async {
    WidgetsFlutterBinding.ensureInitialized();
    await FlutterDownloader.initialize();
  }

  void configureAmplify() async {
    if (!mounted) return;

    try {
      AmplifyAnalyticsPinpoint analytics = AmplifyAnalyticsPinpoint();
      AmplifyAuthCognito auth = AmplifyAuthCognito();
      AmplifyStorageS3 storage = AmplifyStorageS3();

      // Authentication -> AWS Cognito
      // Analytics -> AWS Pinpoint
      // Storage -> AWS S3
      Amplify.addPlugins([auth,analytics,storage]);
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

