import 'package:mobx/mobx.dart';
import 'package:setoko/network/models/response/banner_response.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/network/models/response/home_page_response.dart';
import 'package:setoko/network/models/response/product_response.dart';

import 'home_repository.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

enum HomeStoreState {loading, loaded , error}

abstract class _HomeStore with Store {

  final HomeRepository _homeRepository = HomeImplRepository();

  @observable
  HomePageResponse? _homePageResponse;

  @observable
  HomeStoreState _stateGetData = HomeStoreState.loading;

  @observable
  bool _showFloatingButton = false;

  @computed
  List<BannerResponse> get bannersPromo {
    try {
      return _homePageResponse!.homepageBanners![0].banners!;
    } catch (e) {
      return _fakeBanners;
    }
  }

  @computed
  List<CategoryResponse> get flashSale {
    try {
      return _homePageResponse!.homepageCategories![0].categories!;
    } catch (e) {
      return _fakeCategories;
    }
  }

  @computed
  List<CategoryResponse> get categories {
    try {
      return _homePageResponse!.homepageCategories![0].categories!;
    } catch (e) {
      return _fakeCategories;
    }
  }

  @computed
  List<ProductResponse> get youLike {
    try {
      return _homePageResponse!.products!;
    } catch (e) {
      return _fakeProduct;
    }
  }


  @computed
  List<ProductResponse> get listOfProducts {
    if (_homePageResponse == null) {
      // return [];
      return _fakeProduct;
    } else if (_homePageResponse!.products == null) {
      // return [];
      return _fakeProduct;
    } else if (_homePageResponse!.products!.isEmpty){
      // return [];
      return _fakeProduct;
    }

    return _homePageResponse!.products!;
  }

  int get lengthProductAfterDivision {
    try {
      int division = _homePageResponse!.products!.length~/2;
      if (_homePageResponse!.products!.length%2 > 0) {
        division = division+1;
      }
      return division;
    } catch (e) {
      return fakeLengthProductAfterDivision();
    }
  }

  @computed
  bool get showFloatingButton {
    return _showFloatingButton;
  }

  @computed
  HomeStoreState get homeStoreState {
    return _stateGetData;
  }

  @action
  Future<void> showOrNotFloatingButton(bool showFloatingButton) async {
    if (_showFloatingButton != showFloatingButton) {
      _showFloatingButton = showFloatingButton;
    }
  }

  _HomeStore() {
    getDataHome();
  }



  Future getDataHome() async {
    try {
      _stateGetData = HomeStoreState.loading;
      _homePageResponse = await _homeRepository.getDataHome();
      _stateGetData = HomeStoreState.loaded;
    } catch (e) {
      _stateGetData = HomeStoreState.loaded;
    }
  }

  List<ProductResponse> _fakeProduct = [
    ProductResponse(),
    ProductResponse(),
    ProductResponse(),
  ];

  List<CategoryResponse> _fakeCategories = [
    CategoryResponse(products: [ProductResponse(), ProductResponse()]),
    CategoryResponse(products: [ProductResponse(), ProductResponse(), ProductResponse()]),
    CategoryResponse(products: [ProductResponse()]),
  ];

  List<BannerResponse> _fakeBanners = [
    BannerResponse(),
    BannerResponse(),
    BannerResponse(),
  ];

  int  fakeLengthProductAfterDivision() {
    int division = _fakeProduct.length~/2;
    if (_fakeProduct.length%2 > 0) {
      division = division+1;
    }
    return division;
  }
}