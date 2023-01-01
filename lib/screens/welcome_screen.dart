import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const route = "/welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: const [
                  Expanded(
                    child: Image(
                      image: AssetImage("assets/images/clothes_logo.jpg"),
                      height: double.infinity,
                      width: double.infinity,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Define yourself in your unique way.",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, LoginScreen.route);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  child: const Text(
                    "Get started",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
