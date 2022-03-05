import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:setoko/network/type_network.dart';
import 'graphql_service.dart';
import 'models/request/base_request.dart';
import 'network_interface.dart';

class NetworkService extends NetworkInterface {

  GraphQLService? _graphQLService;

  NetworkService (String uri) {
    _graphQLService = GraphQLService(uri);
  }

  Future<QueryResult> _query(String query, [BaseRequest? request]) async{
    if (request != null) {
      var response = await _graphQLService!.performQuery(query, variables: request.toMap());
      return response;
    } else {
      var response = await _graphQLService!.performQuery(query);
      return response;
    }
  }

  Future<QueryResult> _mutation(String mutation, [BaseRequest? request]) async{
    if (request != null) {
      var response = await _graphQLService!.performMutation(mutation, variables: request.toMap());
      return response;
    } else {
      var response = await _graphQLService!.performMutation(mutation);
      return response;
    }
  }

  Future<QueryResult> _process(TypeNetwork typeNetwork, String queryOrMutation, [BaseRequest? request]) async{
    if (typeNetwork == TypeNetwork.Query) {
      var response = await _query(queryOrMutation, request);
      return response;
    } else if (typeNetwork == TypeNetwork.Mutation) {
      var response = await _mutation(queryOrMutation, request);
      return response;
    }
    throw UnimplementedError();
  }


  @override
  Future<dynamic> process(TypeNetwork typeNetwork, String queryOrMutation, [BaseRequest? request]) async {
    var response = await _process(typeNetwork, queryOrMutation, request);
    if (response.hasException) {
      throw Exception(response.exception);
    }
    return response.data;
  }

}
