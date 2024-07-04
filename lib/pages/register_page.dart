import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
            "Let's get you registered",
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
          SizedBox(height: 10),
          MyTextField(
            controller: confirmPasswordController,
            obscureText: true,
            hintText: 'Password',
          ),
          SizedBox(height: 15),
          MyButton(onTap: () {}, text: 'Sign Up'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have  an account?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16)),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login here',
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
