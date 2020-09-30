import 'package:flutter/material.dart';

const String _title = 'Second Page';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon( Icons.arrow_back ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
            color: Colors.lightBlue,
            margin: EdgeInsets.all(50.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("The Second Page", style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  ),

                  RaisedButton(
                    child: new Text('CLOSE THIS PAGE'),
                    onPressed: () {
                      Navigator.pop(context);
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
