import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
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
        },
        // CHINESE LANGUAGE
        'ch_IN': {
          'language': '语言',
          'dark': '灯光模式',
          'right_to_left': '从右到左 (RTL)',
          'documentation': '文档',
          'change_log': '更改日志',
          'buy_now': '立即购买',
        },
        // ARABIC LANGUAGE
        'ab_IN': {
          'language': 'لغة',
          'dark': 'وضع الضوء',
          'right_to_left': 'من اليمين الى اليسار (RTL)',
          'documentation': 'توثيق',
          'change_log': 'سجل التغيير',
          'buy_now': 'اشتري الآن',
        },
        // FRENCH LANGUAGE
        'fr_IN': {
          'language': 'langue',
          'dark': 'Mode lumière',
          'right_to_left': 'de droite à gauche(RTL)',
          'documentation': 'Documentation',
          'change_log': 'journal des modifications',
          'buy_now': 'Acheter maintenant',
        },
      };
}
