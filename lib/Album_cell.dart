import 'package:flutter/material.dart';
class Album {

  String id;
  String name;
  String shortname;
  Color color=Colors.white;

  Album({this.shortname,this.name,this.id});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(

      id: json['values'] as String,
      name: json['values'] as String,
      shortname: json['values'] as String,


    );
  }
}
