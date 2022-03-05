import 'package:setoko/network/mutations/base_mutation.dart';

class ExampleMutation extends BaseMutation {
  ExampleMutation() : super('''
      mutation insert_users (\$name: String = ""){
        insert_users(objects: {name: \$name}) {
          returning {
            id
            name
          }
        }
      }
    '''
  );
}