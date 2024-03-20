import 'package:flutter/material.dart';
import 'home.dart';

class halamanlogin extends StatefulWidget {
  halamanlogin({super.key});

  @override
  State<halamanlogin> createState() => _LoginpageState();
}

class _LoginpageState extends State<halamanlogin> {
  String email = "";
  String pass = "";
  bool passbenar = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) => email = value,
        decoration: InputDecoration(
          hintText: 'Email',
            label: Text("Masukan Email Bos"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.orangeAccent))),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) => pass = value,
        decoration: InputDecoration(
            hintText: 'Password',
            label: Text("Masukan Password Bos"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.orangeAccent))),
      ),
    );
  }

  Widget _loginButton(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor:
            (passbenar) ? Colors.orangeAccent : Colors.red), // kalo salah tombol jd merah
        onPressed: () {
          String text = "";
          if (email == "arugans@gmail" && pass == "123210155") {
            setState(() {
              passbenar = true;
            });
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return halamanhome();
                }));
          } else {
            setState(() {
              passbenar = false;
            });
          }
        },
        child: const Text('Login', style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
