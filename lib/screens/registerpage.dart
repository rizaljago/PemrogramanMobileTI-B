import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final daftar = Padding(
      padding: EdgeInsets.all(92.80),
      child: Text(
        'DAFTAR AKUN',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final nama = TextFormField(
      keyboardType: TextInputType.name,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nama',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final alamat = TextFormField(
      keyboardType: TextInputType.streetAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'alamat',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final tanggallahir = TextFormField(
      keyboardType: TextInputType.datetime,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'TanggalLahir',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
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
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.pink.shade200,
          child: Text('Daftar', style: TextStyle(color: Colors.black)),
        ),
      ),
    );

    final backButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        color: Colors.pink.shade200,
        child: MaterialButton(
          minWidth: 180.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.tag);
          },
          color: Colors.pink.shade200,
          child: Text('Kembali', style: TextStyle(color: Colors.black)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            daftar,
            nama,
            SizedBox(height: 8.0),
            alamat,
            SizedBox(height: 8.0),
            tanggallahir,
            SizedBox(height: 8.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            backButton
          ],
        ),
      ),
    );
  }
}
