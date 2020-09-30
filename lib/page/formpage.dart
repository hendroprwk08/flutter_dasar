import 'package:flutter/material.dart';

const String _title = 'Form Page';

class FormPage extends StatelessWidget {

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
          return SingleChildScrollView( //scrollview biar ga overflow
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  //color: Colors.purple,
                  width: MediaQuery.of(context).size.width, //fit to parent
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, //left
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                            'Biodata',
                            style: TextStyle(
                                color: Colors.lightBlue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 40)
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0),
                        child: Text(
                          'Registration form, please fulfill by your experiences',
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(), // kotak dengan corner
                            labelText: "Name",
                            hintText: 'Identified name',
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          'Address',
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(), // kotak dengan corner
                            labelText: "Address",
                            hintText: 'Your lovely places location',
                          ),
                        ),
                      ),

                      Text(
                        'Skills',
                        textAlign: TextAlign.left,
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Checkbox(
                                  value: false,
                                  onChanged: null
                              )
                          ),

                          Expanded(
                              flex: 2,
                              child: Text( 'Web' )
                          ),

                          Expanded(
                              flex: 1,
                              child: Checkbox(
                                  value: false,
                                  onChanged: null
                              )
                          ),

                          Expanded(
                              flex: 2,
                              child: Text( 'Desktop' )
                          ),

                          Expanded(
                              flex: 1,
                              child: Checkbox(
                                  value: false,
                                  onChanged: null
                              )
                          ),

                          Expanded(
                              flex: 2,
                              child: Text( 'Mobile' )
                          ),

                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Checkbox(
                                  value: false,
                                  onChanged: null
                              )
                          ),

                          Expanded(
                              flex: 2,
                              child: Text( 'Gr. Design' )
                          ),

                          Expanded(
                              flex: 1,
                              child: Checkbox(
                                  value: false,
                                  onChanged: null
                              )
                          ),

                          Expanded(
                              flex: 2,
                              child: Text( 'Animation' )
                          ),

                          Expanded(
                              flex: 1,
                              child: Checkbox(
                                  value: false,
                                  onChanged: null
                              )
                          ),

                          Expanded(
                              flex: 2,
                              child: Text( 'Video Edit.' )
                          ),

                        ],
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width, //fit to parent
                        child: RaisedButton(
                          child: Text("Lihat"),
                          elevation: 5.0,
                          onPressed: () {
                            // Do something here
                          },
                        ),
                      ),

                    ],
                  ),
                )
            ),
          );
        },
      ),
    );
  }
}
