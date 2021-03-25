import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataProvider {
  static const _tokenKey = 'TOKEN_KEY';

  static DataProvider _dataProvider = DataProvider._internal();
  late SharedPreferences _prefs;

  DataProvider._internal();
  factory DataProvider() => _dataProvider;

  void init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> saveToken(String token) async {
    return _prefs.setString(_tokenKey, token);
  }

  String? get token {
    return _prefs.getString(_tokenKey);
  }

  Future<bool> deleteToken() async {
    return _prefs.remove(_tokenKey);
  }
}
