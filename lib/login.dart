import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Background',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GradientBackground(),
    );
  }
}

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.white10],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 2,),
              Text(
                'Welcome, please Login!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(flex: 3,),
              Text(
                'Email',
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xffE48586),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
              Spacer(flex: 3,),
              Text(
                'Password',
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  obscureText: true, // Mengubah teks menjadi bintang
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xffE48586),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Spacer(flex: 1), // Add a smaller spacer

              // Elevated "LOGIN" button
              ElevatedButton(
                onPressed: () {
                  // Action to perform when the button is pressed
                  print('LOGIN button pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
                child: Text('pressed here'),
              ),
              Spacer(flex: 20),
            ],
          ),
        ),
      ),
    );
  }
}