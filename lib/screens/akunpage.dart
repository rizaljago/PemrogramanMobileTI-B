import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:love_yourselfid/screens/homepage.dart';
import 'package:love_yourselfid/utils/customclipper.dart';


class AkunPage extends StatefulWidget {
  static String tag = 'akun-page';
  @override
  _AkunPageState createState() => new _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
    List indexList = [
      HomePage()
    ];
  }
Widget textfield({@required String hintText}){
  return Material(
    elevation: 4,
    shadowColor: Colors.grey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        letterSpacing: 2,
        color: Colors.black,
        fontWeight: FontWeight.bold,

      ),
      fillColor: Colors.white,
      filled: true,


      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide.none

      )
    )
    )
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
       iconTheme: IconThemeData(
         color: Colors.black,
        ),
      ),


      body: Stack(

        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(
                        hintText: 'Username',
                    ),
                    textfield(
                      hintText: 'Password',
                    ),
                    textfield(
                      hintText: 'Email',
                    ),
                    textfield(
                      hintText: 'NoTelepon',
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.pink,
                        child: Center(
                          child: Text("Update Profile", style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20,
                            color: Colors.black
                          ),),
                        ),
                      )
                    )
                  ],
                )
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
                painter: HeaderCurve(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 25, left: 0),
                child: Text("Profil", style: TextStyle(fontSize: 28, letterSpacing: 1.5, color: Colors.black, fontWeight: FontWeight.w600
                ))),
              Container(
                padding: EdgeInsets.only(top: 200, left: 150),
                width: MediaQuery.of(context).size.width/2.5,
                height: MediaQuery.of(context).size.width/2.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/logoappbar.png'),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 260, left: 130),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(icon: Icon(Icons.edit, color: Colors.white), onPressed: (){}
                ),
            ),
          ),
        ],
      ),







      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink.shade200,
        items: const <BottomNavigationBarItem>[


          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Artikel'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Event'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Berita'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Akun'),

          ),
        ],
        currentIndex: _selectedNavbar ,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

class HeaderCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.pink;
        Path path = Path()
        ..relativeLineTo(0, 150)
        ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
        ..relativeLineTo(0, -150)
        ..close();
        canvas.drawPath(path, paint);
  }
 @override
 bool shouldRepaint(CustomPainter oldDelegate)=> false;
}