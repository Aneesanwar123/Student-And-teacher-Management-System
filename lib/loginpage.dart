import 'package:flutter/material.dart';
import 'package:mobile_app/admin.dart';
import 'package:mobile_app/homepage.dart';
import 'package:mobile_app/signup.dart';
import 'package:mobile_app/select.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  const login({Key? key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void login() {
    _auth.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text.toString(),
    ).then((value) {
      // Check if the email exists, then navigate to the next page
      if (value.user != null) {
        _checkUserRole(value.user!.uid);
      } else {
        // Email doesn't exist, show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login failed. Email not found.")),
        );
      }
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    });
  }

  void _checkUserRole(String uid) {
    if (uid == 'bYVDX1bkJDYgO757Ub96Gu8MfDE3') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Welcome, Admin!")),
      );
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => admin()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Welcome, User!")),
      );
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => select()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Image(
                image: AssetImage("images/login.jfif"),
                fit: BoxFit.cover,
                height: 250,
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "Sign in to Continue",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "Email is empty";
                          } else if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                              .hasMatch(text)) {
                            return "Invalid email format";
                          }
                        },
                        decoration: InputDecoration(hintText: "Email"),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: passwordController,
                        obscureText: true,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "Password is Empty";
                          } else if (text.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                        },
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            login();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5, backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5, backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
