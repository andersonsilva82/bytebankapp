import 'package:bytebank_persistencia/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'database/app_database.dart';
import 'models/contacts.dart';


void main() {
  runApp(const ByteBankApp());

  // for (var i = 1 ; i<= 1000; i++) {
  //   save(Contact(1, 'Anderson$i', i*100));
  // }
  //save(Contact(1, 'Anderson2', 2000)).then((id){});
   // findAll().then((contacts) => debugPrint(contacts.toString()));
  //});
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


