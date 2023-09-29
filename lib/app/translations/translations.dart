import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'greeting': 'Hello',
        },
        'th_TH': {
          'greeting': 'สวัสดี',
        }
      };
}
