import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get apiKey => dotenv.env['API_KEY']!;
  static String get apiUrl => dotenv.env['API_URL']!;
  static String get apiLang => dotenv.env['API_LANG']!;
}
