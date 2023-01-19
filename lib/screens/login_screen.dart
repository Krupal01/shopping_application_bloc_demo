import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/screens/home_screen.dart';
import 'package:shopping_application_bloc_demo/screens/signup_screen.dart';
import 'package:shopping_application_bloc_demo/widgets/buttons.dart';
import 'package:shopping_application_bloc_demo/widgets/header_text.dart';
import 'package:shopping_application_bloc_demo/widgets/spacer.dart';

class LoginScreen extends StatelessWidget {
  static const route = '/login_screen';
  final _formKey = GlobalKey<FormState>();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 24.0, 12.0, 24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(text: "Login"),
              Space(),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'UserName',
                ),
              ),
              Space(),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              Expanded(
                child: Container(),
              ),
              PaddingButton(
                height: 40.0,
                width: double.infinity,
                child: const Text("Login"),
                onPressed: () {
                  Navigator.popAndPushNamed(context, HomeScreen.route);
                },
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpScreen.route);
                  },
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(color: Colors.amber, fontSize: 10),
                  ),
                  child: const Text("Doesn't have account? , Create Account"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
