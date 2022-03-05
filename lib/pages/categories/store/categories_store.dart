import 'package:mobx/mobx.dart';
import 'package:setoko/network/models/response/categories_page_response.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'categories_repository.dart';

part 'categories_store.g.dart';

class CategoriesStore = _CategoriesStore with _$CategoriesStore;

enum CategoriesStoreState { loading, loaded , error}

abstract class _CategoriesStore with Store {

  final CategoriesRepository _categoriesRepository = CategoriesImplRepository();

  @observable
  CategoriesStoreState state = CategoriesStoreState.loading;

  @observable
  CategoriesPageResponse? _categoriesPageResponse;

  @computed
  List<CategoryResponse> get categories {
    try {
      return _categoriesPageResponse!.categories![0].categories!;
    } catch (e) {
      return _fakeCategories;
    }
  }

  _CategoriesStore() {
    getData();
  }

  Future getData() async {
    try {
      state = CategoriesStoreState.loading;
      _categoriesPageResponse = await _categoriesRepository.getData();
      state = CategoriesStoreState.loaded;
    } catch (e) {
      state = CategoriesStoreState.loaded;
    }
  }


  List<CategoryResponse> _fakeCategories = [
    CategoryResponse(),
    CategoryResponse(),
    CategoryResponse(),
  ];
}
