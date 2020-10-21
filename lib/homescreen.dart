import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuse.dart';


class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  String s1="nosel";
  String s2="nosel";
  String s3="nosel";
  String s4="nosel";
  String s5="nosel";
  String s6="nosel";




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
                    Text("Select Subjects ",
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
                      s1="sel";
                    });
                  },


                      //colour: select==Gender.selected1?Colors.green:Colors.white,
                      colour: s1=="sel"?Colors.green:Colors.white,

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

                          s2="sel";
                        });
                      },

                      colour: s2=="sel"?Colors.green:Colors.white,
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

                          s3="sel";
                        });
                      },

                      colour: s3=="sel"?Colors.green:Colors.white,
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

                          s4="sel";
                        });
                      },

                      colour: s4=="sel"?Colors.green:Colors.white,
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

                          s5="sel";
                        });
                      },

                      colour: s5=="sel"?Colors.green:Colors.white,
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

                          s6="sel";
                        });
                      },

                      colour: s6=="sel"?Colors.green:Colors.white,
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
