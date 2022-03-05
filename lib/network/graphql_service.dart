import 'package:graphql/client.dart';
import 'package:setoko/utils/local_preference.dart';

class GraphQLService {

  GraphQLClient? _client;

  GraphQLService (String _uri)  {
    final HttpLink _httpLink = HttpLink(
      _uri,
    );
    final AuthLink _authLink = AuthLink(
      getToken: () async {
        if (LocalPreference.getAccessToken().isEmpty) {
          final token = await getJwtToken();
          LocalPreference.setAccessToken(token);
        }
        return LocalPreference.getAccessToken();
      },
    );
    final Link _link = _authLink.concat(_httpLink);
    _client =  GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );
  }


  Future<QueryResult> performQuery(String query,
      {Map<String, dynamic>? variables}) async {
    try {
      if (variables != null) {
        QueryOptions options = QueryOptions(document: gql(query), variables: variables);
        final result = await _client!.query(options);
        return result;
      } else {
        QueryOptions options = QueryOptions(document: gql(query));
        final result = await _client!.query(options);
        return result;
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }

  }

  Future<QueryResult> performMutation(String query,
      {Map<String, dynamic>? variables}) async {
    try {
      if (variables != null) {
        MutationOptions options = MutationOptions(document: gql(query), variables: variables);
        final result = await _client!.mutate(options);
        return result;
      } else {
        MutationOptions options = MutationOptions(document: gql(query));
        final result = await _client!.mutate(options);
        return result;
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }

  }

  Future<String> getJwtToken() async {
    return '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';
  }

}
