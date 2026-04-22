import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reset Password")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: "email")),
            TextField(decoration: const InputDecoration(labelText: "otp")),
            TextField(decoration: const InputDecoration(labelText: "password")),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/login"),
              child: const Text("Reset Password"),
            ),
          ],
        ),
      ),
    );
  }
}
