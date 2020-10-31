
import 'package:flutter/material.dart';

import 'api_subject.dart';


class Quiz_page extends StatefulWidget {
  @override
  _Quiz_pageState createState() => _Quiz_pageState();
}

class _Quiz_pageState extends State<Quiz_page> {

  String api="https://api.steinhq.com/v1/storages/5f37792b5d3cdc44fcd7d30b/ml";

  List<Users> data=[];
  List the_user=[];
  int index=0;
  @override
  Future<List<Users>> _asyncronus() async {
    print("hello");
    data= await WeatherModel().getCityWeather();

    return data;
  }
  void initState() {




    super.initState();

    print(data);
  }


  @override
  Widget build(BuildContext context) {

    print(data);
    if (data==[]){
      print("lodu");
    }

    if (data != null) {
      return Scaffold(
        backgroundColor: Colors.white,
        body:FutureBuilder(
          future: _asyncronus(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              return Container(
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return SafeArea(
                      child: Center(
                        child: Container(
                          child: SingleChildScrollView(
                            child: Expanded(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text("Q. ${snapshot.data[index].question}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 35.0, color: Colors.black54),),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 30.0, vertical: 40.0),
                                    child: Column(


                                        children: [
                                          "1.${data[index].opt0}",
                                          "2.${data[index].opt1}",
                                          "3.${data[index].opt2}",
                                          "4.${data[index].opt3}"
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
                                              onPressed: () {},
                                              color: Colors.redAccent[100],
                                              colorBrightness: Brightness.light,


                                            ),
                                          );
                                        }).toList()
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            else if(snapshot.hasError){
              throw snapshot.error;
            }
            else{
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      );
    }
  }
}
