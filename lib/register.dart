import 'package:flutter/material.dart';



class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final name = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Name ",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
    );

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),

    );

    final loginButon = Material(
      elevation: 5.0,

      color: Colors.redAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final AlreadyAcc = Material(
      elevation: 5.0,

      color: Colors.redAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        onPressed: () {},
        child: Text("Already Account SignIn ",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );



    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Log-in",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,

        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child:Container(
                    child: Stack(

                      children: <Widget>[

                        Card(
                          elevation: 10.0,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: SingleChildScrollView(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.74,
                                width: MediaQuery.of(context).size.width*0.9,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,


                                    children: <Widget>[
                                      SizedBox(height: 35.0),


                                      Text("Enter Your Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      name,

                                      SizedBox(height: 15.0),
                                      Text("Enter E-Mail ID",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      emailField,
                                      SizedBox(height: 15.0),
                                      Text("Enter Your Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      passwordField,
                                      SizedBox(height: 15.0),
                                      Text("Confirm Your Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      passwordField,
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      loginButon,
                                      SizedBox(height: 15.0),
                                      AlreadyAcc,
                                      SizedBox(height: 15.0),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        FractionalTranslation(
                          translation: Offset(1.1, -0.5),
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            child: Center(
                              child:Icon(Icons.group,size: 100.0,color: Colors.redAccent,),
                            ),
                          ),
                        )],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
