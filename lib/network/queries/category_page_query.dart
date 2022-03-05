import 'package:setoko/network/queries/base_query.dart';

class CategoryPageQuery extends BaseQuery {
  CategoryPageQuery() : super('''
    
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