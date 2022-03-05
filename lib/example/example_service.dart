import 'package:setoko/example/example_mutation.dart';
import 'package:setoko/example/example_query.dart';
import 'package:setoko/network/base_service.dart';
import 'package:setoko/network/type_network.dart';

import 'example_mutation_request.dart';
import 'example_query_request.dart';

class ExampleService extends BaseService{

  Future<String> queryExample(final ExampleQueryRequest request) async{
    try {
      var result = await process(TypeNetwork.Query, ExampleQuery(), request);
      print(result);
      return result.toString();
    } catch (e) {
      print(e);
      throw Exception('Unable to connect with server');
    }
  }

  Future<String> mutationExample(final ExampleMutationRequest request) async{
    try {
      var result = await process(TypeNetwork.Mutation, ExampleMutation(), request);
      print(result);
      return result.toString();
    } catch (e) {
      print(e);
      throw Exception('Unable to connect with server');
    }
  }

}