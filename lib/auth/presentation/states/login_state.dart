import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = ChangeNotifierProvider((ref) => loginNotifier());

class loginNotifier extends ChangeNotifier {
  bool isEmail = false;
  bool isPassword = false;
  bool isValid = false;

  void checkEmail(String email) {
    if(RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email)) {
      isEmail = true;
    }
    else {
      isEmail = false;
    }

    if(isEmail && isPassword) {
      isValid = true;
    }
    else {
      isValid = false;
    }
    notifyListeners();
  }

  void checkPassword(String password) {
    if(password.length > 7) {
      isPassword = true;
    }
    else {
      isPassword = false;
    }

    if(isEmail && isPassword) {
      isValid = true;
    }
    else {
      isValid = false;
    }
    notifyListeners();
  }
}