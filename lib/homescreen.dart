import 'dart:async';
import 'package:flutter_app_tmdb/quiz_screen.dart';

import 'Album_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuse.dart';
import 'networking.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  StreamController<int> streamController = new StreamController<int>();






  gridview(AsyncSnapshot<List<Album>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data.map(
              (album) {

            return GestureDetector(
              child: GridTile(
                child: AlbumCell(album1:album),
              ),
              onTap: () {
                setState(() {
                  if (album.color==Colors.white){
                    album.color=Colors.green;
                  }else if (album.color==Colors.green){
                    album.color=Colors.white;
                  }
                });
              },
            );
          },
        ).toList(),
      ),
    );
  }



  circularProgress() {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(child: Text("Select Your Subjects",style: TextStyle(fontSize: 40.0,color: Colors.grey),)),
          Center(
            child: RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz_page()));
              },
              color: Colors.red,

              child: Text("Test"),
            ),
          ),
          Flexible(
            child: FutureBuilder<List<Album>>(
              future: Services.getPhotos(),
              builder: (context, snapshot) {
                // not setstate here
                //
                if (snapshot.hasError) {
                  return Text('Error ${snapshot.error}');
                }
                //
                if (snapshot.hasData) {
                  streamController.sink.add(snapshot.data.length);
                  // gridview
                  return gridview(snapshot);
                }

                return circularProgress();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}

