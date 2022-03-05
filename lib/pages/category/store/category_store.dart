import 'package:mobx/mobx.dart';
import 'package:setoko/network/models/response/category_page_response.dart';
import 'package:setoko/network/models/response/product_response.dart';

import 'category_repository.dart';

part 'category_store.g.dart';

class CategoryStore = _CategoryStore with _$CategoryStore;

enum CategoryStoreState { loading, loaded, error }

abstract class _CategoryStore with Store {
  final CategoryRepository _categoryRepository = CategoryImplRepository();

  @observable
  CategoryStoreState state = CategoryStoreState.loading;

  @observable
  CategoryPageResponse? _categoryPageResponse;

  @computed
  List<ProductResponse> get flashSale {
    return _fakeProduct;
  }

  @computed
  List<ProductResponse> get newProduct {
    return _fakeProduct;
  }

  @computed
  List<ProductResponse> get listOfProduct {
    return _fakeProduct;
  }

  int get lengthProductAfterDivision {
    return fakeLengthProductAfterDivision();
  }
  _CategoryStore() {
    getData();
  }

  Future getData() async {
    try {
      state = CategoryStoreState.loading;
      _categoryPageResponse = await _categoryRepository.getData();
      state = CategoryStoreState.loaded;
    } catch (e) {
      state = CategoryStoreState.loaded;
    }
  }


  List<ProductResponse> _fakeProduct = [
    ProductResponse(),
    ProductResponse(),
    ProductResponse(),
  ];

  int  fakeLengthProductAfterDivision() {
    int division = _fakeProduct.length~/2;
    if (_fakeProduct.length%2 > 0) {
      division = division+1;
    }
    return division;
  }
}