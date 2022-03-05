abstract class BaseQueryMutation{
  final String _queryMutation;

  BaseQueryMutation(this._queryMutation);

  get value => _queryMutation;
}