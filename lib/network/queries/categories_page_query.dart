import 'package:setoko/network/queries/base_query.dart';

class CategoriesPageQuery extends BaseQuery {
  CategoriesPageQuery() : super('''
    
    fragment categorySet on CategorySet {
      id
      name
      categories {
        id
        name
        ordering
        visible
      }
    }
    
    {
      # category list
      categories: categorySets(criteria: { section: "homepage" }) {
        ...categorySet
      }
    }
     

  ''');
}