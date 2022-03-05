import 'package:setoko/app/model/language_model.dart';

import 'language_service.dart';

abstract class MainRepository {
  Future<LanguageModel> setAppLanguage([int type = 0]);
}

class MainImplRepository implements MainRepository {
  final LanguageService _languageService = LanguageService();
  @override
  Future<LanguageModel> setAppLanguage([int type = 0]) async {
    return _languageService.setAppLanguage(type);
  }

}