import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Album_cell.dart';
import 'package:flutter/material.dart';
import 'api_subject.dart';
class Services {
  static const String url = "https://sheets.googleapis.com/v4/spreadsheets/1sQhy4Ex1XztFzMU3_nvpc-9par8AcIIwsksm9vhlM_E/values/subject?key=AIzaSyBHa8gIZFiDDGmSUKiDPBn6I-aDt6e0IHc";

  static Future<List<Album>> getPhotos() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Album> list = parsePhotos(response.body);
        print(list);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Album> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Album>((json) => Album.fromJson(json)).toList();
  }
}
