import 'package:flutter/material.dart';
import 'package:garduino_dashboard/pages/page_2/second_page.dart';
import './const.dart';
import './dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App_tom_dernoncourt',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: MaterialColor(
            primaryColorCode,
            <int, Color>{
              50: const Color(primaryColorCode).withOpacity(0.1),
              100: const Color(primaryColorCode).withOpacity(0.2),
              200: const Color(primaryColorCode).withOpacity(0.3),
              300: const Color(primaryColorCode).withOpacity(0.4),
              400: const Color(primaryColorCode).withOpacity(0.5),
              500: const Color(primaryColorCode).withOpacity(0.6),
              600: const Color(primaryColorCode).withOpacity(0.7),
              700: const Color(primaryColorCode).withOpacity(0.8),
              800: const Color(primaryColorCode).withOpacity(0.9),
              900: const Color(primaryColorCode).withOpacity(1.0),
            },
          ),
          scaffoldBackgroundColor: const Color(0xFF171821),
          fontFamily: 'IBMPlexSans',
          brightness: Brightness.dark),
      home: const Second_page(),
      // home: const Dashboard() to view the dashboard
    );
  }
}
