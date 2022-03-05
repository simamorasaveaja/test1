import 'dart:io';
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:setoko/utils/local_preference.dart';

class ServiceUrl {
  ServiceUrl._();

  static String pathLogin() {
    String deviceId = LocalPreference.getDeviceId();
    String transactionId = _getTransactionId();
    String osType = _getOsType();
    return '/v1/allo/mobile/login/$transactionId/$osType/$deviceId';
  }

  static String pathRegister() {
    String deviceId = LocalPreference.getDeviceId();
    String transactionId = _getTransactionId();
    String osType = _getOsType();
    return '/v1/allo/mobile/register/$transactionId/$osType/$deviceId';
  }

  static String _getOsType() {
    if (Platform.isAndroid) {
      return 'android';
    } else if (Platform.isIOS) {
      return 'ios';
    } else {
      return "";
    }
  }
  static String _getTransactionId() {
    var transactionId;
    var now = new DateTime.now();
    var formatter = new DateFormat('yymmdd');
    transactionId = formatter.format(now);
    var rndnumber="";
    var rnd= new Random();
    for (var i = 0; i < 14; i++) {
      rndnumber = rndnumber + rnd.nextInt(9).toString();
    }
    transactionId = transactionId + rndnumber.split('').reversed.join('');
    rndnumber="";
    for (var i = 0; i < 12; i++) {
      rndnumber = rndnumber + rnd.nextInt(9).toString();
    }
    transactionId = transactionId + rndnumber;
    LocalPreference.setTrxId(transactionId);
    return transactionId;
  }
}