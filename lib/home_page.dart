import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
      child: Container(
        margin: const EdgeInsets.only(right: 45, left: 45),
        child: Column(
          children: <Widget>[


            Padding(padding: EdgeInsets.symmetric(vertical: 15.0), ),


            Image.asset(
              'assets/images/errando-proper.png',
              scale: 2.3,
              ),


            Padding(padding: EdgeInsets.symmetric(vertical: 20.0), ),


            Text(
              'Sign In To Errando',
              style: TextStyle(
                color: Colors.white, 
                fontSize:  25.0,
                fontWeight: FontWeight.bold
                ), 
            ),


            Padding(padding: EdgeInsets.symmetric(vertical: 20.0), ),


            TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Username",
              hintStyle: TextStyle(fontSize: 16),
              contentPadding: EdgeInsets.all(17.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),


          Padding(padding: EdgeInsets.symmetric(vertical: 15.0), ),

           TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Password",
              hintStyle: TextStyle(fontSize: 16),
              contentPadding: EdgeInsets.all(17.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 30.0), ),

          FlatButton(
            color: Colors.orange,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            splashColor: Colors.deepOrange,
            onPressed: () {
              /*...*/
            },
            child: Text(
              "LOGIN",
              style: TextStyle( fontWeight: FontWeight.bold),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 30.0), ),

          Text('Forgot Password?', style: TextStyle(
            color: Colors.white54,
            fontSize: 14.0
            ),
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 15.0), ),

            Text('Not Registered? Sign Up!', style: TextStyle(
            color: Colors.white54,
            fontSize: 14.0
            ),
            ),

          ],
        ),
      ),
    )
      );
  }
}