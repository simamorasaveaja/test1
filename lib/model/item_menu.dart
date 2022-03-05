import 'package:setoko/utils/fun_utils.dart';

enum MenuBottom { HOME, CATEGORIES, ALLO, PROMOS, ACCOUNT }

class ItemMenu {
  MenuBottom id;
  bool isActive;
  String image;
  String imageActive;

  ItemMenu({required this.id, this.isActive = false, this.image = '', this.imageActive = ''});

  String _getImageSource() {
    return getSourceByNameImage(image);
  }

  String _getImageActiveSource() {
    return getSourceByNameImage(imageActive);
  }

  String getSource() {
    return isActive == true ? _getImageActiveSource() : _getImageSource();
  }

}
