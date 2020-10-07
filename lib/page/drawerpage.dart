import 'package:flutter/material.dart';
import 'package:flutter_dasar/page/main.dart';
import 'package:flutter_dasar/page/secondpage.dart';

import 'formpage.dart';

const String _title = 'Drawer Page';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_title), //judul untuk ditampilkan pada AppBar
          backgroundColor: Color(0x666666aa) //HEX Colors
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Hendro Purwoko'),
                accountEmail: Text('hendroprwk08@gmail.com'),
                currentAccountPicture: CircleAvatar(backgroundColor: Colors.black26, child: Text('HP'),),
              decoration: BoxDecoration( color: Colors.orange ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(backgroundColor: Colors.black26, child: Text('H'),),
                CircleAvatar(backgroundColor: Colors.black26, child: Text('P'),),
              ],


            ),

            ListTile(
              title: Text('Halaman Utama'),
              trailing: Icon( Icons.arrow_forward ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp())
                );
              },
            ),

            ListTile(
              title: Text('Halaman Kedua'),
              trailing: Icon( Icons.arrow_forward ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage())
                );
              },
            ),

            ListTile(
              title: Text('Halaman Form'),
              trailing: Icon( Icons.arrow_forward ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage())
                );
              },
            ),

            ListTile(
              title: Text('Tutup'),
              trailing: Icon( Icons.close ),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),

      body: new Container()

    );
  }
}
