import 'package:flutter/material.dart';
class Album {

  String id;
  String name;
  String shortname;
  Color color=Colors.white;

  Album({this.shortname,this.name,this.id});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(

      id: json['id'] as String,
      name: json['FullName'] as String,
      shortname: json['ShortName'] as String,


    );
  }
}
