import 'package:setoko/network/queries/base_query.dart';

class ExampleQuery extends BaseQuery {
  ExampleQuery() : super('''
    query launchesPast (\$limit: Int = 2) {
      launchesPast(limit: \$limit) {
        mission_name
        launch_date_local
        launch_site {
          site_name_long
        }
      }
    }
  ''');
}