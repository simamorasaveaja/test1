// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesStore on _CategoriesStore, Store {
  Computed<List<CategoryResponse>>? _$categoriesComputed;

  @override
  List<CategoryResponse> get categories => (_$categoriesComputed ??=
          Computed<List<CategoryResponse>>(() => super.categories,
              name: '_CategoriesStore.categories'))
      .value;

  final _$stateAtom = Atom(name: '_CategoriesStore.state');

  @override
  CategoriesStoreState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(CategoriesStoreState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$_categoriesPageResponseAtom =
      Atom(name: '_CategoriesStore._categoriesPageResponse');

  @override
  CategoriesPageResponse? get _categoriesPageResponse {
    _$_categoriesPageResponseAtom.reportRead();
    return super._categoriesPageResponse;
  }

  @override
  set _categoriesPageResponse(CategoriesPageResponse? value) {
    _$_categoriesPageResponseAtom
        .reportWrite(value, super._categoriesPageResponse, () {
      super._categoriesPageResponse = value;
    });
  }

  @override
  String toString() {
    return '''
state: ${state},
categories: ${categories}
    ''';
  }
}
