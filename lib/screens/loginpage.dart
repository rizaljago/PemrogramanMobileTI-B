import 'package:flutter/material.dart';
import 'homepage.dart';
import 'registerpage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }else{
      print("Tidak Tervalidasi");
    }
  }

  static String validatepassword(value){
    if (value!= 'flutter') {
      return "Password Salah!";
    } else {
      return null;
    }
  }

  static String validateusernamemasuk(value){
    if (value!= 'melvaijalvirgi') {
      return "username salah!";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset('assets/logo.png'),
      ),
    );
    final form = Form(
      key: formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email / Username"
            ),
            validator: validateusernamemasuk,

          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TextFormField(
              decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: "Password"

              ),
              obscureText: true,
              validator: validatepassword,
            ),
          )
        ],
      )
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        color: Colors.pink.shade200,
        child: MaterialButton(
          minWidth: 180.0,
          height: 42.0,
          onPressed: validate,
          color: Colors.pink.shade200,
          child: Text('Log In', style: TextStyle(color: Colors.black)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );

    final daftar = FlatButton(
      child: Text(
        'Daftar',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(RegisterPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            form,
            loginButton,
            forgotLabel,
            daftar
          ],
        ),
      ),
    );
  }
}
