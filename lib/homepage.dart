import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/per.dart';
import 'package:mobile_app/select.dart';
import 'visitor.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              color: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>select()));
              },
            ),
          ),
          title: Center(
            child: Padding(
            padding: const EdgeInsets.only(right: 20,top: 3),
            child: Center(
              child: Text(
                "EduVisitHub",
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
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
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
                      top: 30,
                      right: 78,
                      // left: 8
                    ),
                    child: Container(
                      child: Text(
                          "Discover Your Dream Job ",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold
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
                            width: 170,
                            margin: EdgeInsets.only(
                                left: 210,
                              bottom: 30,
                            ),
                            child: Image(image: AssetImage("images/down.png")),
                          ),
                          Positioned(
                            top: 55,
                            right: 150,
                            child: Text(
                              "Professional professors play \n"
                              "a pivotal role  in shaping the \n"
                              "academic landscape serving \n"
                              "as beacons of knowledge and \n"
                              "inspiration. \n",
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
                              onPressed: (){},
                              child: Text(
                                "Explore",
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                backgroundColor: Colors.yellow[900],
                                fixedSize: Size(120,40),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 150,
                                    bottom: 165
                                ),
                                child: Wrap(
                                  children: [
                                    Text(
                                      "Be A Professional",
                                      style: TextStyle(
                                          fontSize: 23,
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
                        right: 280,
                        top: 20
                    ),
                    child: Text("Benefits",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                  ),
                  SizedBox(height:10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
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
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  colors: [Color(0xfff48c6ef),Color(0xff6f86d6)],
                              ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 230,
                      top: 25,
                        left:3,
                    ),
                    child: Text("Recent Jobs",
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),),
                  ),
                  /* for applying containers */
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>per()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xfffdfbfb), Color(0xffebedee)],
                                ),
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(1),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 20,
                                  left: 14
                              ),
                              height: 110,
                              width: 100,
                              child: Container(
                                width: 100.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/14/97/3a/14973aa009f2daf9315cd9f1a5a1bb82.jpg"                      ),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              child: Container(
                                height: 150,
                                width: 200,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          right: 8
                                      ),
                                      child: Text(
                                        "For Permenent Professor",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [Color(0xfff5f7fa),Color(0xffc3cfe2)]),
                                            ),// Set your desired background color
                                            child: Text(
                                              'Karachi',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 8,),
                                          Icon(Icons.work),
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [Color(0xfff5f7fa),Color(0xffc3cfe2)]),
                                            ),// Set your desired background color
                                            child: Text(
                                              'onsite',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
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
                            Positioned(
                              left: 330,
                              child: Container(
                                height: 60,
                                width: 40,
                                child: Icon(
                                  FontAwesomeIcons.save,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            // Positioned(
                            //   top: 118,
                            //   left: 270,
                            //   child: GestureDetector(
                            //     onTap: () {
                            //       print('Link clicked!');
                            //       // You can navigate to a new screen or open a URL, etc.
                            //     },
                            //     child: Text(
                            //       'Apply here',
                            //       style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 17
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>visitor()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xfffdfbfb), Color(0xffebedee)],
                                ),
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(1),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 20,
                                  left: 14
                              ),
                              height: 110,
                              width: 100,
                              child: Container(
                                width: 100.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/14/97/3a/14973aa009f2daf9315cd9f1a5a1bb82.jpg"                      ),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              child: Container(
                                height: 150,
                                width: 200,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          right: 35,
                                      ),
                                      child: Text(
                                        "For Visiting Professor",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [Color(0xfff5f7fa),Color(0xffc3cfe2)]),
                                            ),// Set your desired background color
                                            child: Text(
                                              'Karachi',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 8,),
                                          Icon(Icons.work),
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [Color(0xfff5f7fa),Color(0xffc3cfe2)]),
                                            ),// Set your desired background color
                                            child: Text(
                                              'onsite',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
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
                            Positioned(
                              left: 330,
                              child: Container(
                                height: 60,
                                width: 40,
                                child: Icon(
                                  FontAwesomeIcons.save,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            // Positioned(
                            //   top: 118,
                            //   left: 270,
                            //   child: GestureDetector(
                            //     onTap: () {
                            //       print('Link clicked!');
                            //       // You can navigate to a new screen or open a URL, etc.
                            //     },
                            //     child: Text(
                            //       'Apply here',
                            //       style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 17
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height:10)
                    ],
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
