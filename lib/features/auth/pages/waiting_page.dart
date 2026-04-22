import 'package:flutter/material.dart';

class WaitingPage extends StatelessWidget {
  const WaitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("En attente")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Compte en attente..."),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/home"),
              child: const Text("Vérifier"),
            ),
          ],
        ),
      ),
    );
  }
}
