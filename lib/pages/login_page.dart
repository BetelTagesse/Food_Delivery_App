import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock_open,
              size: 56, color: Theme.of(context).colorScheme.inversePrimary),
          SizedBox(height: 25),
          Text(
            'Food Delivery App',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          SizedBox(height: 25),
          MyTextField(
            controller: emailController,
            obscureText: false,
            hintText: 'Email',
          ),
          SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            obscureText: true,
            hintText: 'Password',
          ),
          SizedBox(height: 20),
          MyButton(onTap: () {}, text: 'Sign in'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16)),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register here',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)))
            ],
          )
        ],
      ),
    );
  }
}
