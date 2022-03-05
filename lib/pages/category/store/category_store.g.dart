// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoryStore on _CategoryStore, Store {
  Computed<List<ProductResponse>>? _$flashSaleComputed;

  @override
  List<ProductResponse> get flashSale => (_$flashSaleComputed ??=
          Computed<List<ProductResponse>>(() => super.flashSale,
              name: '_CategoryStore.flashSale'))
      .value;
  Computed<List<ProductResponse>>? _$newProductComputed;

  @override
  List<ProductResponse> get newProduct => (_$newProductComputed ??=
          Computed<List<ProductResponse>>(() => super.newProduct,
              name: '_CategoryStore.newProduct'))
      .value;
  Computed<List<ProductResponse>>? _$listOfProductComputed;

  @override
  List<ProductResponse> get listOfProduct => (_$listOfProductComputed ??=
          Computed<List<ProductResponse>>(() => super.listOfProduct,
              name: '_CategoryStore.listOfProduct'))
      .value;

  final _$stateAtom = Atom(name: '_CategoryStore.state');

  @override
  CategoryStoreState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(CategoryStoreState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$_categoryPageResponseAtom =
      Atom(name: '_CategoryStore._categoryPageResponse');

  @override
  CategoryPageResponse? get _categoryPageResponse {
    _$_categoryPageResponseAtom.reportRead();
    return super._categoryPageResponse;
  }

  @override
  set _categoryPageResponse(CategoryPageResponse? value) {
    _$_categoryPageResponseAtom.reportWrite(value, super._categoryPageResponse,
        () {
      super._categoryPageResponse = value;
    });
  }

  @override
  String toString() {
    return '''
state: ${state},
flashSale: ${flashSale},
newProduct: ${newProduct},
listOfProduct: ${listOfProduct}
    ''';
  }
}
