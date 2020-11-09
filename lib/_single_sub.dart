

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:ui';
import 'dart:async';
import 'networking.dart';
import 'api_subject.dart';


class Quiz_page extends StatefulWidget {
  final String sub;
  Quiz_page({this.sub});
  @override
  _Quiz_pageState createState() => _Quiz_pageState(sub);
}

class _Quiz_pageState extends State<Quiz_page> {
  final String sub1;
  _Quiz_pageState(this.sub1);




  Future<dynamic>data;
  List the_user = [];
  int index = 1;
  int score=0;
  int c=0;
  Timer timer;
  int total=10;
  int elapsed=0;
  initTimer(){
    timer=Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick==total){
        timer.cancel();
        setState(() {
          index++;
          elapsed=0;
          initTimer();


        });
      }else{
        setState(() {
          elapsed=timer.tick;
        });
      }
    });
  }

  Future<dynamic> futurealbum;
  Check(val,ans){
    timer.cancel();
    elapsed=0;
    initTimer();
    if (val==ans){

      return true;
    }

    return false;
  }


  void initState() {
    super.initState();
    initTimer();
    futurealbum=WeatherModel(url1: sub1).getCityWeather();

  }


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: FutureBuilder<dynamic>(
        future: futurealbum,
        builder: (context,snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(

              appBar: AppBar(
                backgroundColor: Colors.redAccent,
                title: Text("${elapsed}"),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height,
                        width: 400,
                        child: Card(
                          elevation: 8.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${snapshot.data["values"][index][1]}",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),

                                ),
                                SizedBox(height: 25.0,),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 40.0),
                                  child: Column(


                                      children: [
                                        "${snapshot.data['values'][index][2]}",
                                        "${snapshot.data['values'][index][3]}",
                                        "${snapshot.data['values'][index][4]}",
                                        "${snapshot.data['values'][index][5]}"
                                      ].map((option) {
                                        return Container(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          child: RaisedButton(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 25.0),
                                            child: Text(option, style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white),),
                                            onPressed: () {

                                              if ((index<20) && (Check(option, snapshot.data['values'][index][6])==true)){

                                                score++;
                                                c=0;
                                              }else{
                                                if (c==0){
                                                  if (Check(option, snapshot.data['values'][index][6])==true){
                                                    print(score);
                                                    score++;
                                                    c++;
                                                  }
                                                }
                                              }
                                              setState(() {
                                                if (index<20){
                                                  index++;
                                                }
                                              });
                                            },
                                            color: Colors.redAccent[100],
                                            colorBrightness: Brightness.light,


                                          ),
                                        );
                                      }).toList()
                                  ),
                                ),
                                RaisedButton(
                                  color: Colors.redAccent,
                                  child: Text('Next'),
                                  onPressed: (){
                                    setState(() {

                                      timer.cancel();
                                      elapsed=0;
                                      initTimer();
                                      if (index<20){
                                        index++;
                                        c=0;
                                      }

                                    });
                                  },
                                ),
                                index==20?RaisedButton(color: Colors.green,child: Text("Submit"),onPressed: (){
                                  print(score);
                                  setState(() {
                                    index=0;
                                    score=0;
                                  });
                                }):Text(""),
                              ],

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            );
          }else {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
        },
      ),
    );

  }
}

