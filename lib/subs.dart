import 'package:shared_preferences/shared_preferences.dart';

class SubsService {

  static Future<bool> Subscribed () async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('subscribed') ?? false;
  }


  static Future buy () async {

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('subscribed', true);

  }
}