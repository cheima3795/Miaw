import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: "email")),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/reset"),
              child: const Text("Send OTP"),
            ),
          ],
        ),
      ),
    );
  }
}
