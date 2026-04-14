import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(data);
    String username = user['username'];
    return "Hello $username";
  } catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  try {
    bool isValid = await checkCredentials();
    print("There is a user: $isValid");
    if (isValid) {
      return await greetUser();
    } else {
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}