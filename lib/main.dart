import 'package:bytebank_persistencia/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'database/app_database.dart';
import 'models/contacts.dart';

// codigo refatorado
void main() {
  runApp(const ByteBankApp());

}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        secondaryHeaderColor: Colors.green,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const Dashboard(),
    );
  }
}


