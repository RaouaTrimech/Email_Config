import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scrumproject/Utilisateurs/Log%20In/Log%20In.dart';
import 'package:scrumproject/Utilisateurs/Sign%20Up/Sign%20Up.dart';
import 'Globals/Popup.dart';
import 'Trains/Available trains/Train_List.dart';
void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Scrum Project',
    /*  theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 40, color: Color.fromRGBO(88, 89, 91, 100),fontFamily: "Prata"),
          bodyText2: TextStyle(fontSize: 40, fontFamily: "Roboto-Medium"),
        )
      ),*/

      home:
        LogIn()
     /* TrainTicket(Type : "GRANDES LIGNES",

          Station1: "Station1",
          Station2: "Station2",
          Date: "04/05/2021",
          Line: "04",
          TravelTime : "13:00")*/
    );
  }
}
