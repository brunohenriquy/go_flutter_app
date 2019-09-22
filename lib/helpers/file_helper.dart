import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileHelper {
  static Future<File> getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  static Future<File> saveData(data) async {
    String dataEncoded = json.encode(data);
    final file = await getFile();
    return file.writeAsString(dataEncoded);
  }

  static Future<String> readData() async {
    try {
      final file = await getFile();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }
}
