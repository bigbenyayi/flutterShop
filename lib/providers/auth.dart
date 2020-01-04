import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signUp(String email, String password) async {
    const url =
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDIMoGs0dkZAJ7YfdbU7jZD6kn6Df61X4E";

    final response = await http.post(
      url,
      body: json.encode(
        {"email": email, "password": password, "returnSecureToken": true},
      ),
    );
    print(response);
  }
}
