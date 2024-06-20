import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  static const String _userTokenKey = "user_token"; // Rename the key

  //final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  SharedPreferences? _prefs;



  Future<Future<bool>?> setUserToken({required String token}) async {

    return _prefs?.setString(_userTokenKey, token);
  }
 Future<String?> getUserToken()async{
    final String? token=_prefs?.getString(_userTokenKey);
    print("getting user token $token");
    
    return token;
  }
}
