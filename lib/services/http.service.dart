import 'package:bot_toast/bot_toast.dart';
import 'package:movies_app/settings/environment.setting.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpService {
  static Future<dynamic> get(String endpoint) async {
    BotToast.showLoading();
    final url = Uri.https(Environment.apiUrl, endpoint, {
      'api_key': Environment.apiKey,
      'language': Environment.apiLang,
    });

    final resp = await http.get(url);
    final data = jsonDecode(resp.body);
    BotToast.closeAllLoading();
    return data;
  }
}
