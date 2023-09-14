import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  // Base URL, root url for all API requests. E.g https://stagingapi.chipchip.social/v1/users/login for login
  static const String baseURL = 'https://stagingapi.chipchip.social/v1/users';

  Future<String?> loginUser(String email, String password) async {
    final String loginUrl = '$baseURL/login';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    final Map<String, String> body = {
      'email': email,
      'password': password,
    };

    try {
      final response = await http.post(Uri.parse(loginUrl), headers: headers, body: jsonEncode(body));
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        return responseData['access_token'] as String?;
      } else {
        final responseData = jsonDecode(response.body);
        final errorMessage = responseData['message'] as String?;
        throw Exception(errorMessage);
      }
    } catch (error) {
      throw Exception('Failed to log in: $error');
    }
  }
}