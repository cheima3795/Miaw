import 'package:provider/provider.dart';
import '../features/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import '../styles/app_theme.dart';
import '../routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthController())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        initialRoute: "/login",
        routes: AppRoutes.routes,
      ),
    );
  }
}
