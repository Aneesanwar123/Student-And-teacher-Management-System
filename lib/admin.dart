import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/dept.dart';
import 'package:mobile_app/homepage.dart';
import 'package:mobile_app/per.dart';
class admin extends StatelessWidget {
  const admin({super.key});
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
              padding: const EdgeInsets.only(
                right: 25,
              ),
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20,top: 3),
                child: Center(
                  child: Text(
                    "Admin Panel",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff6C33A3), Color(0xff8241B8)],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon:Icon(Icons.add_alert),color: Colors.white,),
            ],
          ),
        ),
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15,
                          right: 150,
                          left: 8
                      ),
                      child: Container(
                        child: Text(
                          "Decide The Capability",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 220.0,
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                gradient: LinearGradient(
                                  colors: [Color(0xff6C33A3), Color(0xff8241B8)],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(1),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              margin: EdgeInsets.only(
                                left: 200,
                                bottom: 30,
                              ),
                              child: Image(image: AssetImage("images/ui.png")),
                            ),
                            Positioned(
                              top: 55,
                              right: 175,
                              child: Text(
                                    "It emphasizes that true \n"
                                    "leadership extends beyond \n"
                                    "mere authority it involves a \n"
                                    "genuine commitment to the \n"
                                    "well-being and development \n"
                                    "of the individuals under\n",
                                softWrap: true,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                            ),
                            Positioned(
                              top: 170,
                              right: 243,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dept()));
                                },
                                child: Text(
                                  "Explore",
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow[900],
                                  fixedSize: Size(120,40),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 260,
                                      bottom: 165
                                  ),
                                  child: Wrap(
                                    children: [
                                      Text(
                                        "Admin",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10,
                          right: 150,
                          left: 8
                      ),
                      child: Text(
                        "Decide The professor",
                        style: TextStyle(
                            fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height:8),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>per()));
                            },
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [Color(0xffc471f5),Color(0xfffa71cd)],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.purple.withOpacity(1),
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
                                    "For Permenent",
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
                          SizedBox(height: 13,),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [Color(0xfff48c6ef),Color(0xff6f86d6)],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(1),
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
                                    "For Visitors",
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
                                      "Flexibility in Teaching Professional Enrichment Contributing Expertise Balancing Roles Networking Opportunities Community Engagemen",
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
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );

  }
}
