import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

class FetchData {
  List<AutoGenerate> movieList = [];

  Future<AutoGenerate> fetchDataGithubUsers() async {
    final response = await http.get(
      Uri.parse(
          "https://api.themoviedb.org/3/movie/550?api_key=cb2255adf6677ed24174a1326092c517"),
    );

    if (response.statusCode == 200) {
      return AutoGenerate.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Ada yang salah ibnu!!!");
    }
  }
}
