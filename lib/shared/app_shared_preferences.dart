part of isdp_vasa;

class AppSharedPreferences {
  static SharedPreferences? _preferences;

  static const _accessToken = "_accessToken";

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

//access token
  static Future setAccessToken(String value) async =>
      await _preferences?.setString(_accessToken, value);

  static getAccessToken() => _preferences?.getString(_accessToken);

}
