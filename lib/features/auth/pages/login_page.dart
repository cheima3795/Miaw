import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final email = TextEditingController();
  final motDePasse = TextEditingController();

  void login(BuildContext context) {
    final status = "en_attente"; // mock

    if (status == "en_attente") {
      Navigator.pushNamed(context, "/waiting");
    } else if (status == "approuve") {
      Navigator.pushNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Refusé")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: "Email")),
            TextField(
              decoration: const InputDecoration(labelText: "Mot de passe"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => login(context),
              child: const Text("Login"),
            ),

            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/forgot"),
              child: const Text("Mot de passe oublié ?"),
            ),

            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/register"),
              child: const Text("Créer un compte"),
            ),
          ],
        ),
      ),
    );
  }
}
