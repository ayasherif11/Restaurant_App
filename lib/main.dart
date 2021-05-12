import 'dart:ui';
import 'package:flutter/material.dart';
import 'file:///C:/Users/hp/AndroidStudioProjects/restaurant_app/lib/Home/Home.dart';

main() {
  runApp(SignIn());
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Stack(children: [
          ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
              child: Image.asset(
                "assets/images/back2.jpg",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          ///////////////////////////////////////////////////////////////////////////////

        SingleChildScrollView(
            child: Column(children: [
              Container(
                  margin: EdgeInsets.only(right: 0, top: 150, bottom: 70),
                  child: Text("Sign Up",
                      style: TextStyle(
                        //       fontFamily: "Lobster",
                          fontSize: 60,
                          color: Colors.white54))),

              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.white),
                      hintStyle: TextStyle(fontSize: 24, color: Colors.white70),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.white70,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      fillColor: Colors.white12,
                      labelText: "User Name",
                      labelStyle: TextStyle(color: Colors.white)),
                  keyboardType: TextInputType.name,
                ),
              ),
              ////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        hintStyle: TextStyle(fontSize: 24, color: Colors.white70),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white70,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1)),
                        fillColor: Colors.white12,
                        labelText: "E-mail",
                        labelStyle: TextStyle(color: Colors.white))),
              ),
/////////////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    hintStyle: TextStyle(fontSize: 24, color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1)),
                    fillColor: Colors.white12,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),

              Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.only(top:40),
                child: Builder(
                  builder:(context)=> RaisedButton(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.black,
                    child: Text("CREATE ACCOUNT",
                      style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: (){
                      //  Navigator.push(context, MaterialPageRoute(builder:(c)=> RestaurantApp()));
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>RestaurantAppState()),);

                    },

                  ),
                ),
              ),

            ]),
          ),


        ]),
      ),
    );
  }
}
