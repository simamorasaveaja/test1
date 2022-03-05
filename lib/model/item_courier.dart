class ItemCourier {
  String id;
  String title;
  String date;
  String price;
  List<ItemMethod> itemMethods;
  ItemCourier({this.id = '', this.title = '', this.date = '', this.price = '', this.itemMethods = const []});
}

class ItemMethod {
  String title;
  String date;
  String price;

  ItemMethod({this.title = '', this.date = '', this.price = ''});
}