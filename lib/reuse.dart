import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReusableCode extends StatelessWidget {
  ReusableCode({@required this.colour, this.cardchild,this.onPress,this.cardchild2});
  final Color colour;
  final String cardchild;
  final String cardchild2;
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

              Text(cardchild,style: TextStyle(fontSize: 30.0),),
              Text(cardchild2,textAlign: TextAlign.center,),
            ],
          ),
          ),
        ),
    );

  }
}
