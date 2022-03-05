import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobx/mobx.dart';
import 'package:setoko/app/store/main_repository.dart';
import 'package:setoko/app/model/language_model.dart';
import 'package:setoko/utils/local_preference.dart';
import '../../app.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {

  final MainRepository _mainRepository = MainImplRepository();

  @observable
  LanguageModel? language;

  @observable
  String? tokenFirebase;

  @observable
  String? deviceId;

  @computed
  bool get isAppSettingsLoaded {
    return language != null && deviceId != null;
  }

  @computed
  int get typeLanguage {
    if (language == null) {
      return 0;
    } else {
      return language!.code == 'en' ? 0 : 1;
    }
  }

  _MainStore() {
    _init();
  }

  void _init() async {
    await LocalPreference.getInstance();
    await _setDeviceId();
    setAppLanguage(LocalPreference.getTypeLocalization());
    registerNotification();
  }

  @action
  Future<void> setAppLanguage([int type = 0]) async {
    try {
      language = await _mainRepository.setAppLanguage(type);
      LocalPreference.setTypeLocalization(type);
    } catch (e) {
      language = LanguageModel('en', 'English', null);
    }
  }

  void registerNotification() async {

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        selectNotificationSubject.add(message.data.toString());
      }
    });

    FirebaseMessaging.onMessage.listen((message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                icon: 'logo_notif',
              ),
            ), payload: message.data.toString()
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      selectNotificationSubject.add(message.data.toString());
    });

    FirebaseMessaging.instance.getToken().then((value) {
      tokenFirebase = value;
      print(tokenFirebase.toString());
    });

    selectNotificationSubject.stream.listen((String? payload) async {
      print('Result $payload');
    });
  }

  Future<void> _setDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      deviceId =  iosDeviceInfo.identifierForVendor;
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      deviceId = androidDeviceInfo.androidId;
    }
    LocalPreference.setDeviceId(deviceId.toString());
  }

}