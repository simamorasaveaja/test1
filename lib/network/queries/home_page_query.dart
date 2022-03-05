import 'package:setoko/network/queries/base_query.dart';

class HomePageQuery extends BaseQuery {
  HomePageQuery() : super('''
    fragment bannerSet on BannerSet {
      id
      name
      banners {
        id
        name
        ordering
        visible
        variants {
          key
          kind
          filename
        }
      }
    }
    
    fragment categorySet on CategorySet {
      id
      name
      categories {
        id
        name
        ordering
        visible
        products {
          id
          name
          attributes {
            kind
          }
        }
      }
    }
    
    {
      # Homepage carousell
      homepageBanners: bannerSets(criteria: { section: "homepage" }) {
        ...bannerSet
      }
    
      # Another banner set
      otherBanners: bannerSets(criteria: { section: "other" }) {
        ...bannerSet
      }
    
      # Homepage category list
      homepageCategories: categorySets(criteria: { section: "homepage" }) {
        ...categorySet
      }
    
      products {
        id
        name
        price {
          normal
        }
      }
    }
     

  ''');
}