import 'package:shared_preferences/shared_preferences.dart';

Future<bool> get userStatus async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstTime = prefs.getBool('first_time') ?? true;
  if (isFirstTime) {
    prefs.setBool('first_time', false);
  }
  return isFirstTime;
}
