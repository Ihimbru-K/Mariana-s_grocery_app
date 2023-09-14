
import 'package:http/http.dart';

class AuthService{

  //Base URL, root url for all API requests. E.g https://stagingapi.chipchip.social/v1/users/login for login
  static const String baseURL = 'https://stagingapi.chipchip.social/v1/users' ;

  Future<String> loginUser( String email, String password) async{
    final String loginUrl = '$baseURL/login';g

  }



}