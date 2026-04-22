class AuthApi {
  Future<Map<String, dynamic>> login(Map data) async {
    await Future.delayed(const Duration(seconds: 1));

    return {
      "token": "123",
      "user": {
        "nom": "Ali",
        "email": data["email"],
        "role": "client",
        "status": "en_attente",
      },
    };
  }
}
