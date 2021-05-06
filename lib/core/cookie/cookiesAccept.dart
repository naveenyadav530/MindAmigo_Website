import 'package:shared_preferences/shared_preferences.dart';

class CookiesSharedPreference{

  static SharedPreferences _pref;
  static const String _isVisibleCookie='isVisible';

  static Future init() async{
    _pref=await SharedPreferences.getInstance();
    return _pref;
  }

  static Future setCookiePolicy(bool isVisible) async {
    await _pref.setBool(_isVisibleCookie, isVisible);
  }


  static bool getCookiePolicy(){
    return _pref.getBool(_isVisibleCookie);
  }
}
