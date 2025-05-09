import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tiny_talks/config.dart';

class SignupService {
   final String apiUrl = "${AppConfig.baseUrl}/api/signup/";
   Future<Map<String, dynamic>> signup(String username, String email, String password) async {
    try {
      print("Attempting API call: $apiUrl");

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': username,
          'email': email,
          'password': password,
          'verified': false, // Ensure the user is unverified initially
        }),
      ).timeout(Duration(seconds: 30));

      print("Response Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      final responseData = jsonDecode(response.body);

      if (response.statusCode == 201) {
        return {"success": true, "message": "User created successfully"};
      } else {
        return {
          "success": false,
          "message": responseData['message'] ?? "Signup failed"
        };
      }
    } catch (e) {
      print("Signup Error: $e");
      if (e is http.ClientException) {
        return {"success": false, "message": "Network error. Please try again."};
      } else {
        return {"success": false, "message": "An unknown error occurred."};
      }
    }
  }
}
 

