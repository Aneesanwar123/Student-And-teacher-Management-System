import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_app/loginpage.dart'; // Assuming the correct import path for loginpage.dart

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        width: MediaQuery.of(context).size.width, // Adjusted width
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff6C33A3), Color(0xff8241B8)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Adjusted height
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 43
                    ),
                    child: Text(
                      'Find Your',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.08, // Responsive font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Dream Path!',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.08, // Responsive font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02), // Adjusted height
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image(
                  image: AssetImage("images/edit.png"),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width, // Adjusted width
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
