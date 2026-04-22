import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(
              title: const Text("Home"),
              onTap: () => Navigator.pushNamed(context, "/home"),
            ),
            ListTile(
              title: const Text("Logout"),
              onTap: () => Navigator.pushNamed(context, "/login"),
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
