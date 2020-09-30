import 'package:flutter/material.dart';
import 'package:flutter_dasar/page/secondpage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'formpage.dart';

const String _title = 'Flutter Demo';
BuildContext scaffoldContext;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(), debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    scaffoldContext = context;

    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text(_title), //judul untuk ditampilkan pada AppBar
          backgroundColor: Color(0x666666aa) //HEX Colors
      ),
      body: new Builder(
        // Create an inner BuildContext so that the onPressed methods
        // can refer to the Scaffold with Scaffold.of().
        //only for SnackBar
        builder: (BuildContext context) {
          return Container(
            alignment: Alignment.center,
            color: Colors.amberAccent,
            margin: EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Main Page", style:TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0),
                      ),
                      Shadow(
                        color: Colors.red,
                        blurRadius: 10.0,
                        offset: Offset(-5.0, 5.0),
                      ),
                    ]
                  ),
                ),

                RaisedButton(
                    splashColor: Colors.red,
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "This is Center Short Toast",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    },
                    textColor: Colors.black,
                    child: Text('TOAST')
                ),

                RaisedButton(
                  child: new Text('SNACKBAR'),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text('Hello!'),
                    ));
                  },
                ),

                RaisedButton(
                  child: new Text('DIALOG'),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // return object of type Dialog
                        return AlertDialog(
                          title:  Text("Alert Dialog title"),
                          content:  Text("Alert Dialog body"),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                             FlatButton(
                              child:  Text("Close"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                ),

                RaisedButton(
                  child: new Text('OPEN THE SECOND PAGE'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage())
                    );
                  },
                ),

                RaisedButton(
                  child: new Text('OPEN FORM PAGE'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormPage())
                    );
                  },
                )
              ]

            ),
          );
        },
      ),
    );
  }
}
