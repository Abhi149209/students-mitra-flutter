import 'package:flutter/material.dart';
import 'Album_cell.dart';

class AlbumCell extends StatelessWidget {
  const AlbumCell({this.album1,this.colour});

  final List album1;
  final Color colour;


  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 8.0,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(

                child: ClipRRect(

                  borderRadius: BorderRadius.circular(10.0),
                  child: Text(
                    album1[1],
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  album1[2],
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
