import 'package:shopping_application_bloc_demo/screens/cart_screen.dart';
import 'package:shopping_application_bloc_demo/screens/details_screen.dart';
import 'package:shopping_application_bloc_demo/screens/home_screen.dart';
import 'package:shopping_application_bloc_demo/screens/login_screen.dart';
import 'package:shopping_application_bloc_demo/screens/signup_screen.dart';
import 'package:shopping_application_bloc_demo/screens/welcome_screen.dart';

var routes = {
  WelcomeScreen.route : (context) => const WelcomeScreen(),
  LoginScreen.route : (context) => LoginScreen(),
  SignUpScreen.route : (context) => SignUpScreen(),
  HomeScreen.route : (context) => const HomeScreen(),
  DetailsScreen.route : (context) => const DetailsScreen(),
  CartScreen.route : (context) => const CartScreen(),
};
