import 'package:flutter/material.dart';
import 'package:firebasetesting/common/common_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        toolbarHeight: 40,
        centerTitle: true,
        title: const Text(
          'Signup Screen',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Welcome To Signup Page",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16.0),
            // Username TextFormField
            CommonWidget.buildTextFormField(
              controller: TextEditingController(),
              labelText: 'Username',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 16.0),
            // Email TextFormField
            CommonWidget.buildTextFormField(
              controller: TextEditingController(),
              labelText: 'Email',
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 16.0),
            // Password TextFormField
            CommonWidget.buildTextFormField(
              controller: TextEditingController(),
              obscureText: true,
              labelText: 'Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility_off_outlined,
            ),

            const SizedBox(height: 24.0),
            CommonWidget.buildButton('SignUp', () {
              
            }),
          ],
        ),
      ),
    );
  }
}
