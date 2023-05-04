import 'dart:convert';

import 'package:ecommerce/models/apis/language_model.dart';
import 'package:http/http.dart' as http;

class LanguageApi {
  /*
  const req = unirest('GET', 'https://dnaber-languagetool.p.rapidapi.com/v2/languages');

req.headers({
	'content-type': 'application/octet-stream',
	'X-RapidAPI-Key': 'f73c843594msh503bed3c79b206bp11071bjsn1190392bee05',
	'X-RapidAPI-Host': 'dnaber-languagetool.p.rapidapi.com'
});
  */
  static Future<List<languages>> getLanguages() async {
    var uri = Uri.https(
      "dnaber-languagetool.p.rapidapi.com",
      "/v2/languages",
    );
    final response = await http.get(uri, headers: {
      'content-type': 'application/octet-stream',
      'X-RapidAPI-Key': 'f73c843594msh503bed3c79b206bp11071bjsn1190392bee05',
      'X-RapidAPI-Host': 'dnaber-languagetool.p.rapidapi.com'
    });
    List data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data) {
      _temp.add(i);
    }
    print(_temp);
    return languages.languageFromSnapshot(_temp);
  }
}
