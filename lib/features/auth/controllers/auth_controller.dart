import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  bool isLoading = false;
  String? error;

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    if (email == "test@test.com") {
      error = null;
    } else {
      error = "Invalid credentials";
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> register(Map data) async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    error = null;

    isLoading = false;
    notifyListeners();
  }
}
