// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  Computed<bool>? _$isAppSettingsLoadedComputed;

  @override
  bool get isAppSettingsLoaded => (_$isAppSettingsLoadedComputed ??=
          Computed<bool>(() => super.isAppSettingsLoaded,
              name: '_MainStore.isAppSettingsLoaded'))
      .value;
  Computed<int>? _$typeLanguageComputed;

  @override
  int get typeLanguage =>
      (_$typeLanguageComputed ??= Computed<int>(() => super.typeLanguage,
              name: '_MainStore.typeLanguage'))
          .value;

  final _$languageAtom = Atom(name: '_MainStore.language');

  @override
  LanguageModel? get language {
    _$languageAtom.reportRead();
    return super.language;
  }

  @override
  set language(LanguageModel? value) {
    _$languageAtom.reportWrite(value, super.language, () {
      super.language = value;
    });
  }

  final _$tokenFirebaseAtom = Atom(name: '_MainStore.tokenFirebase');

  @override
  String? get tokenFirebase {
    _$tokenFirebaseAtom.reportRead();
    return super.tokenFirebase;
  }

  @override
  set tokenFirebase(String? value) {
    _$tokenFirebaseAtom.reportWrite(value, super.tokenFirebase, () {
      super.tokenFirebase = value;
    });
  }

  final _$deviceIdAtom = Atom(name: '_MainStore.deviceId');

  @override
  String? get deviceId {
    _$deviceIdAtom.reportRead();
    return super.deviceId;
  }

  @override
  set deviceId(String? value) {
    _$deviceIdAtom.reportWrite(value, super.deviceId, () {
      super.deviceId = value;
    });
  }

  final _$setAppLanguageAsyncAction = AsyncAction('_MainStore.setAppLanguage');

  @override
  Future<void> setAppLanguage([int type = 0]) {
    return _$setAppLanguageAsyncAction.run(() => super.setAppLanguage(type));
  }

  @override
  String toString() {
    return '''
language: ${language},
tokenFirebase: ${tokenFirebase},
deviceId: ${deviceId},
isAppSettingsLoaded: ${isAppSettingsLoaded},
typeLanguage: ${typeLanguage}
    ''';
  }
}
