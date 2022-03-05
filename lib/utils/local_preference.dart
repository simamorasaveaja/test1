import 'package:shared_preferences/shared_preferences.dart';

class LocalPreference {
  static LocalPreference? _localPreference;
  static SharedPreferences? _preferences;

  static Future<LocalPreference> getInstance() async {
    if (_localPreference == null) {
      var secureStorage = LocalPreference._();
      await secureStorage._init();
      _localPreference = secureStorage;
    }
    return _localPreference!;
  }
  LocalPreference._();

  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String _getString(String key, {String defValue = ''}) {
    if (_preferences == null) return defValue;
    return _preferences!.getString(key) ?? defValue;
  }

  static Future<bool>? _putString(String key, String value) {
    if (_preferences == null) return null;
    return _preferences!.setString(key, value);
  }

  static bool _getBoolean(String key, {bool defValue = false}) {
    if (_preferences == null) return defValue;
    return _preferences!.getBool(key) ?? defValue;
  }

  static Future<bool>? _putBoolean(String key, bool value) {
    if (_preferences == null) return null;
    return _preferences!.setBool(key, value);
  }

  static int _getInteger(String key, {int defValue = 0}) {
    if (_preferences == null) return defValue;
    return _preferences!.getInt(key) ?? defValue;
  }

  static Future<bool>? _putInteger(String key, int value) {
    if (_preferences == null) return null;
    return _preferences!.setInt(key, value);
  }

  static String _constIsLogin = "isLogin";
  static String _constIsOnBoardingOpen = "isOnBoardingOpen";
  static String _constIsFirstTimeLogin = "isFirstTimeLogin";
  static String _constTokenFirebase = "tokenFirebase";
  static String _constTypeLocalization = "typeLocalization";
  static String _constAccessToken = "accessToken";
  static String _constDeviceId = "deviceIdApp";
  static String _constEqId = "eqIdApp";
  static String _constTrxId = "eqTrxApp";

  static bool isLogin(){
    return _getBoolean(_constIsLogin);
  }

  static void setLogin(bool isLogin) {
    _putBoolean(_constIsLogin, isLogin);
  }

  static bool isOnBoardingOpen(){
    return _getBoolean(_constIsOnBoardingOpen);
  }

  static void setOnBoardingOpen(bool onBoardingOpen) {
    _putBoolean(_constIsOnBoardingOpen, onBoardingOpen);
  }

  static bool isFirstTimeLogin(){
    return _getBoolean(_constIsFirstTimeLogin);
  }

  static void setFirstTimeLogin(bool isFirstTimeLogin) {
    _putBoolean(_constIsFirstTimeLogin, isFirstTimeLogin);
  }

  static String getTokenFirebase() {
    return _getString(_constTokenFirebase);
  }

  static void setTokenFirebase(String tokenFirebase) {
    _putString(_constTokenFirebase, tokenFirebase);
  }

  static int getTypeLocalization() {
    return _getInteger(_constTypeLocalization);
  }

  static void setTypeLocalization(int type) {
    _putInteger(_constTypeLocalization, type);
  }

  static String getAccessToken() {
    return _getString(_constAccessToken);
  }

  static void setAccessToken(String tokenJWT) {
    _putString(_constAccessToken, tokenJWT);
  }

  static String getDeviceId() {
    return _getString(_constDeviceId);
  }

  static void setDeviceId(String deviceId) {
    _putString(_constDeviceId, deviceId);
  }

  static String getEqId() {
    return _getString(_constEqId);
  }

  static void setEqId(String eqId) {
    _putString(_constEqId, eqId);
  }

  static String getTrxId() {
    return _getString(_constTrxId);
  }

  static void setTrxId(String trxId) {
    _putString(_constTrxId, trxId);
  }

  static void logout() {
    setLogin(false);
    setFirstTimeLogin(false);
    setTokenFirebase("");
    setAccessToken("");
  }
}