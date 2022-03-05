import 'package:mobx/mobx.dart';
import 'package:setoko/network/models/response/allo_response.dart';
import 'package:setoko/network/models/response/register_page_response.dart';
import 'package:setoko/pages/register/store/register_repository.dart';
import 'package:setoko/utils/allo_interface.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStore with _$RegisterStore;

enum RegisterStoreState { loading, loaded, error }
enum WebViewState { loading, loaded }

abstract class _RegisterStore with Store {

  final RegisterRepository _registerRepository = RegisterImplRepository();

  @observable
  RegisterStoreState state = RegisterStoreState.loading;

  @observable
  WebViewState stateWebView = WebViewState.loading;

  @observable
  RegisterPageResponse? _registerPageResponse;

  @computed
  String get url {
    try {
      return _registerPageResponse!.url!.toString();
    } catch (e) {
      return 'kutugondrong.com';
    }
  }

  _RegisterStore() {
    getData();
  }

  @action
  Future getData() async {
    try {
      state = RegisterStoreState.loading;
      _registerPageResponse = await _registerRepository.getData();
      state = RegisterStoreState.loaded;
    } catch (e) {
      print(e);
      state = RegisterStoreState.error;
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
      AlloResponse? response = await _registerRepository.getAllo(path);
      successCallback(response!);
    } catch (e) {
      failedCallback();
    }
  }
}

