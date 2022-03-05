// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  Computed<List<BannerResponse>>? _$bannersPromoComputed;

  @override
  List<BannerResponse> get bannersPromo => (_$bannersPromoComputed ??=
          Computed<List<BannerResponse>>(() => super.bannersPromo,
              name: '_HomeStore.bannersPromo'))
      .value;
  Computed<List<CategoryResponse>>? _$flashSaleComputed;

  @override
  List<CategoryResponse> get flashSale => (_$flashSaleComputed ??=
          Computed<List<CategoryResponse>>(() => super.flashSale,
              name: '_HomeStore.flashSale'))
      .value;
  Computed<List<CategoryResponse>>? _$categoriesComputed;

  @override
  List<CategoryResponse> get categories => (_$categoriesComputed ??=
          Computed<List<CategoryResponse>>(() => super.categories,
              name: '_HomeStore.categories'))
      .value;
  Computed<List<ProductResponse>>? _$youLikeComputed;

  @override
  List<ProductResponse> get youLike => (_$youLikeComputed ??=
          Computed<List<ProductResponse>>(() => super.youLike,
              name: '_HomeStore.youLike'))
      .value;
  Computed<List<ProductResponse>>? _$listOfProductsComputed;

  @override
  List<ProductResponse> get listOfProducts => (_$listOfProductsComputed ??=
          Computed<List<ProductResponse>>(() => super.listOfProducts,
              name: '_HomeStore.listOfProducts'))
      .value;
  Computed<bool>? _$showFloatingButtonComputed;

  @override
  bool get showFloatingButton => (_$showFloatingButtonComputed ??=
          Computed<bool>(() => super.showFloatingButton,
              name: '_HomeStore.showFloatingButton'))
      .value;
  Computed<HomeStoreState>? _$homeStoreStateComputed;

  @override
  HomeStoreState get homeStoreState => (_$homeStoreStateComputed ??=
          Computed<HomeStoreState>(() => super.homeStoreState,
              name: '_HomeStore.homeStoreState'))
      .value;

  final _$_homePageResponseAtom = Atom(name: '_HomeStore._homePageResponse');

  @override
  HomePageResponse? get _homePageResponse {
    _$_homePageResponseAtom.reportRead();
    return super._homePageResponse;
  }

  @override
  set _homePageResponse(HomePageResponse? value) {
    _$_homePageResponseAtom.reportWrite(value, super._homePageResponse, () {
      super._homePageResponse = value;
    });
  }

  final _$_stateGetDataAtom = Atom(name: '_HomeStore._stateGetData');

  @override
  HomeStoreState get _stateGetData {
    _$_stateGetDataAtom.reportRead();
    return super._stateGetData;
  }

  @override
  set _stateGetData(HomeStoreState value) {
    _$_stateGetDataAtom.reportWrite(value, super._stateGetData, () {
      super._stateGetData = value;
    });
  }

  final _$_showFloatingButtonAtom =
      Atom(name: '_HomeStore._showFloatingButton');

  @override
  bool get _showFloatingButton {
    _$_showFloatingButtonAtom.reportRead();
    return super._showFloatingButton;
  }

  @override
  set _showFloatingButton(bool value) {
    _$_showFloatingButtonAtom.reportWrite(value, super._showFloatingButton, () {
      super._showFloatingButton = value;
    });
  }

  final _$showOrNotFloatingButtonAsyncAction =
      AsyncAction('_HomeStore.showOrNotFloatingButton');

  @override
  Future<void> showOrNotFloatingButton(bool showFloatingButton) {
    return _$showOrNotFloatingButtonAsyncAction
        .run(() => super.showOrNotFloatingButton(showFloatingButton));
  }

  @override
  String toString() {
    return '''
bannersPromo: ${bannersPromo},
flashSale: ${flashSale},
categories: ${categories},
youLike: ${youLike},
listOfProducts: ${listOfProducts},
showFloatingButton: ${showFloatingButton},
homeStoreState: ${homeStoreState}
    ''';
  }
}
