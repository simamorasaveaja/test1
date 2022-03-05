import 'package:setoko/generated/l10n.dart';

class ListItemOnBoarding {
  List<ItemOnBoarding> items = [];

  ListItemOnBoarding() {
    items.add(ItemOnBoarding(position: 0, imageName: 'ic_onboarding_1'));
    items.add(ItemOnBoarding(position: 1, imageName: 'ic_onboarding_2'));
    items.add(ItemOnBoarding(position: 2, imageName: 'ic_onboarding_3'));
  }

}

class ItemOnBoarding {
  final int position;
  final String imageName;

  ItemOnBoarding({
    required this.position,
    required this.imageName,
  });

  String getTitleByLocalization(final S localization) {
    switch(position) {
      case 0:
        return localization.intro_1_title;
      case 1:
        return localization.intro_2_title;
      case 2:
        return localization.intro_3_title;
      default:
        return '';
    }
  }

  String getDescByLocalization(final S localization) {
    switch(position) {
      case 0:
        return localization.intro_1_description;
      case 1:
        return localization.intro_2_description;
      case 2:
        return localization.intro_3_description;
      default:
        return '';
    }
  }
}
