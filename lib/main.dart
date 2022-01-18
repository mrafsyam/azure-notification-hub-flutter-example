// @dart=2.9

import 'package:azure_notificationhubs_flutter/azure_notificationhubs_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AzureNotificationhubsFlutter _anh = AzureNotificationhubsFlutter();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('POC App'),
        ),
        body: Center(
          child: Column ( mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Azure Notification Hub POC'),
              SizedBox(height: 10),
              Text('This HUB does nothing else except receiving a notification from Azure Notification Hub or '),
              // Text(title),
              SizedBox(height: 10),
              Text('Body : '),
              // Text(body),
            ]
          ),
        ),
      ),
    );
  }
}
