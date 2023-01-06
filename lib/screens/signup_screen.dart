import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/widgets/buttons.dart';
import 'package:shopping_application_bloc_demo/widgets/header_text.dart';
import 'package:shopping_application_bloc_demo/widgets/spacer.dart';

class SignUpScreen extends StatelessWidget {
  static const route = "/signup_screen";
  final _formKey = GlobalKey<FormState>();
  SignUpScreen({Key? key}) : super(key: key);

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
              HeaderText(text: "Create Account"),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Let's create your account",
                  style: TextStyle(fontSize: 10, color: Colors.black38),
                ),
              ),
              Space(height: 30.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Full Name",
                ),
              ),
              Space(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number",
                ),
              ),
              Space(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              Space(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                ),
              ),
              Space(height: 30.0),
              Expanded(child: Container()),
              PaddingButton(
                height: 40.0,
                width: double.infinity,
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black26,
                        height: 1.0,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black38,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black26,
                        height: 1.0,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
              ),
              PaddingButton(
                onPressed: () {},
                child: const Text(
                  "SignUp With Google",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Colors.black26,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
              ),
              Space(),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Already have account? Login",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
