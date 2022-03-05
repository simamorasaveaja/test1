// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  Computed<String>? _$urlComputed;

  @override
  String get url => (_$urlComputed ??=
          Computed<String>(() => super.url, name: '_LoginStore.url'))
      .value;

  final _$stateAtom = Atom(name: '_LoginStore.state');

  @override
  LoginStoreState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(LoginStoreState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$stateWebViewAtom = Atom(name: '_LoginStore.stateWebView');

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

  final _$_loginPageResponseAtom = Atom(name: '_LoginStore._loginPageResponse');

  @override
  LoginPageResponse? get _loginPageResponse {
    _$_loginPageResponseAtom.reportRead();
    return super._loginPageResponse;
  }

  @override
  set _loginPageResponse(LoginPageResponse? value) {
    _$_loginPageResponseAtom.reportWrite(value, super._loginPageResponse, () {
      super._loginPageResponse = value;
    });
  }

  final _$getDataAsyncAction = AsyncAction('_LoginStore.getData');

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$setWebViewStateAsyncAction =
      AsyncAction('_LoginStore.setWebViewState');

  @override
  Future<dynamic> setWebViewState([WebViewState state = WebViewState.loaded]) {
    return _$setWebViewStateAsyncAction.run(() => super.setWebViewState(state));
  }

  final _$getAlloAsyncAction = AsyncAction('_LoginStore.getAllo');

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
