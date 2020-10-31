import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Album_cell.dart';
import 'package:flutter/material.dart';
import 'api_subject.dart';
class Services {
  static const String url = "https://api.steinhq.com/v1/storages/5f951db05d3cdc44fcd7d660/subject";

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
