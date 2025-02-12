import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  String fileId = "AgACAgIAAxkBAAEdGZVnqyhCPx690cYQ_cZERacv6bK5ewAC9egxGyxbWElj1359lxluAAEBAAMCAAN5AAM2BA";
  TelegramMediaConstants.getUrl(fileId);
}

class TelegramMediaConstants {
  static const String bot = "7698637368:AAEqPv5ioj2PS_z1zpMna4OK1XiuoDWNaSY";

  static Future<void> getUrl(String fileId) async {
    Uri uri = Uri.parse("https://api.telegram.org/bot$bot/getFile?file_id=$fileId");
    http.Response response = await http.get(uri);
    String img = jsonDecode(response.body)["result"]["file_path"];
    print("https://api.telegram.org/file/bot$bot/$img");
  }
}