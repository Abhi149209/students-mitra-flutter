import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuse.dart';
enum Gender {
  selected1,
  selected2,
  selected3,
  selected4,
  selected5,
  selected6
}

class HomeScreenAS extends StatefulWidget {


  @override
  _HomeScreenASState createState() => _HomeScreenASState();
}

class _HomeScreenASState extends State<HomeScreenAS> {
  Gender select;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Select any one",
                        style: TextStyle(fontSize: 35.0, color: Colors.grey))
                  ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.red,
                child: Text("Start"),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCode(
                      onPress: (){
                        setState(() {
                          select=Gender.selected1;

                        });
                      },


                      colour: select==Gender.selected1?Colors.green:Colors.white,


                      cardchild: "DBMS",
                      cardchild2: "DATABASE MANAGEMENT SYSTEM",
                    )),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                    child: ReusableCode(
                      onPress: (){
                        setState(() {
                          select=Gender.selected2;

                        });
                      },
                      colour: select==Gender.selected2?Colors.green:Colors.white,

                      cardchild: "ML",
                      cardchild2: "MACHINE LEARNING",
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCode(
                      onPress: (){
                        setState(() {
                          select=Gender.selected3;

                        });
                      },
                      colour: select==Gender.selected3?Colors.green:Colors.white,

                      cardchild: "CD",
                      cardchild2: "COMPILER DESIGN",
                    )),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                    child: ReusableCode(
                      onPress: (){
                        setState(() {
                          select=Gender.selected4;
                          //s4="sel";
                        });
                      },
                      colour: select==Gender.selected4?Colors.green:Colors.white,

                      cardchild: "DAA",
                      cardchild2: "DESIGN AND ANALYSIS OF ALGORITHM",
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCode(
                      onPress: (){
                        setState(() {

                          select=Gender.selected5;
                        });
                      },
                      colour: select==Gender.selected5?Colors.green:Colors.white,

                      cardchild: "DA",
                      cardchild2: "DATA ANALYTICS",
                    )),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                    child: ReusableCode(
                      onPress: (){
                        setState(() {
                          select=Gender.selected6;

                        });
                      },
                      colour: select==Gender.selected6?Colors.green:Colors.white,

                      cardchild: "COI",
                      cardchild2: "CONSTITUTION OF INDIA",
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
