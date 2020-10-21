import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReusableCode2 extends StatelessWidget {
  ReusableCode2({@required this.colour, this.cardchild,this.onPress});
  final Color colour;
  final String cardchild;

  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(24.0),
        color: colour,
        child: GestureDetector(


          onTap:onPress,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Container(padding:EdgeInsets.all(8.0),child: Text(cardchild,style: TextStyle(fontSize: 30.0),)),

            ],
          ),
        ),
      ),
    );

  }
}
