import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuse_sel.dart';
import 'homescreen.dart';
import 'homescreen_select_all.dart';



class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {





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
        children:<Widget> [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(

        
                  child: ReusableCode2(
                    onPress: (){

                    },
                    //colour: select==Gender.selected1?Colors.green:Colors.white,
                    colour: Colors.white,
                    cardchild: "Single Subject  ",

                  ),
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              Expanded(
                  child: ReusableCode2(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    // colour: select==Gender.selected2?Colors.green:Colors.white,
                    colour:Colors.white,
                    cardchild: "Select Subjects    ",

                  )),

              SizedBox(
                width: 6.0,
              ),
              Expanded(
                  child: ReusableCode2(
                    onPress: (){

                    },
                    // colour: select==Gender.selected2?Colors.green:Colors.white,
                    colour: Colors.white,
                    cardchild:   " My All Subjects      ",

                  )),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),

      );

  }
}
