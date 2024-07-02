import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock),
          Text(
            'Food Delivery App',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          MyTextField(
            controller: emailController,
            obscureText: false,
            hintText: 'Email',
          ),
          MyTextField(
            controller: passwordController,
            obscureText: true,
            hintText: 'Password',
          ),
        ],
      ),
    );
  }
}
