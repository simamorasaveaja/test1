import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:setoko/argument/category_page_argument.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/pages/categories/component/item_category_widget.dart';
import 'package:setoko/pages/categories/store/categories_store.dart';
import 'package:setoko/utils/colors.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {

  CategoriesStore? _categoriesStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        switch (_categoriesStore?.state) {
          case CategoriesStoreState.loading:
            return Center(child: CircularProgressIndicator(backgroundColor: greenPrimary,));
          case CategoriesStoreState.loaded:
            return Container(
              color: Colors.white,
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                slivers: [
                  SliverAppBar(
                    backgroundColor: greenPrimary,
                    // Needed to avoid auto-switching status bar color
                    elevation: 0,
                    floating: true,
                    centerTitle: true,
                    title: Text(S.of(context).all_categories.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,),
                  ),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                          (ctx, index) => ItemCategoryWidget(
                        itemCategory: _categoriesStore!.categories[index],
                        onTab: () {
                          Navigator.pushNamed(context, Routes.category, arguments: CategoryPageArgument(itemCategory: _categoriesStore!.categories[index]));
                        },
                      ),
                      childCount: _categoriesStore!.categories.length,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisCount: 3,
                    ),
                  ),
                ],
              ),
            );
          default:
            return Container();
        }
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _categoriesStore ??= Provider.of<CategoriesStore>(context);
  }
}
