import 'package:flutter/material.dart';
import 'package:mobile_app/ai.dart';
import 'package:mobile_app/cs.dart';
import 'package:mobile_app/cyber.dart';
import 'package:mobile_app/it.dart';
import 'package:mobile_app/select.dart';
import 'package:mobile_app/soft.dart';

class Dept extends StatelessWidget {
  const Dept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => select()));
              },
            ),
          ),
    flexibleSpace: FlexibleSpaceBar(
    background: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xff6C33A3), Color(0xff8241B8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    ),
    ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 3),
              child: Text(
                "Department",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_alert), color: Colors.white),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>soft()));
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xffc471f5),Color(0xfffa71cd)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                  right: 16.0,
                  left: 10),
              child:ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(
                      top: 4
                  ),
                  child: Text(
                    "Software Engineering",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "Health and Wellness Financial Security Career Growth Educational Opportunities Support for Research Employee Well-being",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>cs()));
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xffc471f5),Color(0xfffa71cd)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                  right: 16.0,
                  left: 10),
              child:ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(
                      top: 4
                  ),
                  child: Text(
                    "Computer Science",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "Health and Wellness Financial Security Career Growth Educational Opportunities Support for Research Employee Well-being",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>it()));
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xffc471f5),Color(0xfffa71cd)],
              ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                  right: 16.0,
                  left: 10),
              child:ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(
                      top: 4
                  ),
                  child: Text(
                    "Information Technology",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "Health and Wellness Financial Security Career Growth Educational Opportunities Support for Research Employee Well-being",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ai()));
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xffc471f5),Color(0xfffa71cd)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                  right: 16.0,
                  left: 10),
              child:ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(
                      top: 4
                  ),
                  child: Text(
                    "Artificial Intelligence",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "Health and Wellness Financial Security Career Growth Educational Opportunities Support for Research Employee Well-being",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>cyber()));
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xffc471f5),Color(0xfffa71cd)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                  right: 16.0,
                  left: 10),
              child:ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(
                      top: 4
                  ),
                  child: Text(
                    "Cyber Security",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "Health and Wellness Financial Security Career Growth Educational Opportunities Support for Research Employee Well-being",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}