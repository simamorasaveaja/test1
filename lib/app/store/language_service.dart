import 'package:setoko/app/model/language_model.dart';

class LanguageService {
  Future<LanguageModel> setAppLanguage([int type = 0]) async {
    if (type == 0) {
      return LanguageModel('en', 'English', null);
    } else {
      return LanguageModel('id', 'Bahasa Indonesia', 'Indonesian');
    }
  }
}