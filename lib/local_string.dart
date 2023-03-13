import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          'language': 'Language',
          'dark': 'Dark Mode',
          'right_to_left': 'Right to Left (RTL)',
          'documentation': 'Documentation',
          'change_log': 'Change Log',
          'buy_now': 'BUY NOW',
        },
        //HINDI LANGUAGE
        'hi_IN': {
          'language': 'भाषाा',
          'dark': 'डार्क मोड',
          'right_to_left': 'दाएं से बाएं (आरटीएल)',
          'documentation': 'प्रलेखन',
          'change_log': 'लॉग बदलें',
          'buy_now': 'अभी खरीदें',
        },
        //GUJARATI LANGUAGE
        'gu_IN': {
          'language': 'ભાષા',
          'dark': 'ડાર્ક મોડ',
          'right_to_left': 'જમણેથી ડાબે (RTL)',
          'documentation': 'દસ્તાવેજીકરણ',
          'change_log': 'લોગ બદલો',
          'buy_now': 'હમણાં જ ખરીદો',
        }
      };
}
