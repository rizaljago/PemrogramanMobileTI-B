import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_yourselfid/screens/akunpage.dart';
import 'package:love_yourselfid/screens/loginpage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';



class BeritaPage extends StatefulWidget {
  static String tag = 'berita-page';
  @override
  _BeritaPageState createState() => new _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,


      appBar: PreferredSize(
        preferredSize: Size.fromHeight(99),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text('Berita', style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,

          ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: ClipPath(
            clipper: CustomClipperBuatApp(),
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.pinkAccent.shade200, Colors.pinkAccent.shade100],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      tileMode: TileMode.clamp,

                    )
                )

            ),
          ),

        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.pink.shade100,
      ),

    );
  }
}