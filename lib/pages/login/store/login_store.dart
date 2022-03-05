import 'package:mobx/mobx.dart';
import 'package:setoko/network/models/response/allo_response.dart';
import 'package:setoko/network/models/response/login_page_response.dart';
import 'package:setoko/utils/allo_interface.dart';
import 'package:setoko/utils/local_preference.dart';

import 'login_repository.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

enum LoginStoreState { loading, loaded, error }
enum WebViewState { loading, loaded }

abstract class _LoginStore with Store {

  final LoginRepository _loginRepository = LoginImplRepository();

  @observable
  LoginStoreState state = LoginStoreState.loading;

  @observable
  WebViewState stateWebView = WebViewState.loading;

  @observable
  LoginPageResponse? _loginPageResponse;

  @computed
  String get url {
    try {
      return _loginPageResponse!.url!.toString();
    } catch (e) {
      return 'kutugondrong.com';
    }
  }

  _LoginStore() {
    getData();
  }

  @action
  Future getData() async {
    try {
      state = LoginStoreState.loading;
      LocalPreference.setEqId('');
      _loginPageResponse = await _loginRepository.getData();
      var uri = Uri.dataFromString(url);
      print('uri.queryParameters');
      print(uri.queryParameters['equipmentId']);
      LocalPreference.setEqId(uri.queryParameters['equipmentId']!);
      state = LoginStoreState.loaded;
    } catch (e) {
      state = LoginStoreState.error;
    }
  }

  @action
  Future setWebViewState([WebViewState state = WebViewState.loaded]) async {
    stateWebView = state;
  }

  @action
  Future getAllo(String path, AlloSuccessCallback successCallback , AlloFailedCallback failedCallback) async {
    stateWebView = WebViewState.loading;
    try {
      AlloResponse? response = await _loginRepository.getAllo(path);
      successCallback(response!);
    } catch (e) {
      failedCallback();
    }
  }
}