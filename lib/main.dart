import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/routes/routes.dart';
import 'package:shopping_application_bloc_demo/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: WelcomeScreen.route,
    );
  }
}
