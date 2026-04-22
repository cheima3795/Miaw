import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String role = "client";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: "nom")),
            TextField(decoration: const InputDecoration(labelText: "email")),
            TextField(
              decoration: const InputDecoration(labelText: "telephone"),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "mot_de_passe"),
            ),

            DropdownButton<String>(
              value: role,
              items: const [
                DropdownMenuItem(value: "client", child: Text("client")),
                DropdownMenuItem(
                  value: "commercant",
                  child: Text("commercant"),
                ),
                DropdownMenuItem(value: "livreur", child: Text("livreur")),
              ],
              onChanged: (value) {
                setState(() {
                  role = value!;
                });
              },
            ),

            if (role == "livreur")
              TextField(
                decoration: const InputDecoration(
                  labelText: "matricule_vehicule",
                ),
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/login"),
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
