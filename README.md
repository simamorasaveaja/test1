# Client app for Setoko

## Getting Started

Copy `config_dev.dart.template` to `config_dev.dart` and update the file to match your environment.
Do NOT commit the file.

## Android

To monitor Firebase Analytics activities on Windows:

	adb shell setprop debug.firebase.analytics.app com.ctcorpdigital.setoko
	adb logcat | findstr com.ctcorpdigital.setoko

To generate key (only needed to release to Play Store):

    cd android
    keytool -genkey -alias key -keyalg RSA -keystore keystore.jks -dname "CN=Setoko, OU=Setoko, O=CT Corp Digital, L=Tendean, S=Jakarta, C=ID" -storepass CHANGE_ME -keypass CHANGE_ME -deststoretype pkcs12 -keysize 4096 -validity 20000

After `keystore.jks` is created, create `key.properties` with the following contents:

    keyAlias=key
    keyPassword=CHANGE_ME
    storeFile=../keystore.jks
    storePassword=CHANGE_ME

Since `key.properties` contains secret, do NOT commit the file.

## Releasing

### Android

Test flavor (APK):

    flutter build apk -t lib/main_dev.dart --flavor flavor_test

Prod flavor (App Bundle):

    flutter build appbundle -t lib/main_prod.dart --flavor flavor_prod --release

### iOS

Test flavor:

    flutter build ios -t lib/main_dev.dart --flavor flavor_test

Prod flavor:

    flutter build ios -t lib/main_prod.dart --flavor flavor_prod --release

### Web

Prod flavor:

    flutter build web -t lib/main_prod.dart
