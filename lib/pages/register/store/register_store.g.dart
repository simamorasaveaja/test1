// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterStore on _RegisterStore, Store {
  Computed<String>? _$urlComputed;

  @override
  String get url => (_$urlComputed ??=
          Computed<String>(() => super.url, name: '_RegisterStore.url'))
      .value;

  final _$stateAtom = Atom(name: '_RegisterStore.state');

  @override
  RegisterStoreState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(RegisterStoreState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$stateWebViewAtom = Atom(name: '_RegisterStore.stateWebView');

  @override
  WebViewState get stateWebView {
    _$stateWebViewAtom.reportRead();
    return super.stateWebView;
  }

  @override
  set stateWebView(WebViewState value) {
    _$stateWebViewAtom.reportWrite(value, super.stateWebView, () {
      super.stateWebView = value;
    });
  }

  final _$_registerPageResponseAtom =
      Atom(name: '_RegisterStore._registerPageResponse');

  @override
  RegisterPageResponse? get _registerPageResponse {
    _$_registerPageResponseAtom.reportRead();
    return super._registerPageResponse;
  }

  @override
  set _registerPageResponse(RegisterPageResponse? value) {
    _$_registerPageResponseAtom.reportWrite(value, super._registerPageResponse,
        () {
      super._registerPageResponse = value;
    });
  }

  final _$getDataAsyncAction = AsyncAction('_RegisterStore.getData');

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$setWebViewStateAsyncAction =
      AsyncAction('_RegisterStore.setWebViewState');

  @override
  Future<dynamic> setWebViewState([WebViewState state = WebViewState.loaded]) {
    return _$setWebViewStateAsyncAction.run(() => super.setWebViewState(state));
  }

  final _$getAlloAsyncAction = AsyncAction('_RegisterStore.getAllo');

  @override
  Future<dynamic> getAllo(String path, AlloSuccessCallback successCallback,
      AlloFailedCallback failedCallback) {
    return _$getAlloAsyncAction
        .run(() => super.getAllo(path, successCallback, failedCallback));
  }

  @override
  String toString() {
    return '''
state: ${state},
stateWebView: ${stateWebView},
url: ${url}
    ''';
  }
}
