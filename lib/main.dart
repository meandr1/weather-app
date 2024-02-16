import 'package:flutter/material.dart';
import 'package:weather/views/main_screen.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:weather/api_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appID = Keys().getAppIDKey();
  final clientKey = Keys().getClientKey();
  const parseServerUrl = 'http://18.207.97.79:1337/parse';

  await Parse().initialize(appID, parseServerUrl,
      clientKey: clientKey, autoSendSessionId: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen());
  }
}