import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/dept.dart';
import 'package:mobile_app/homepage.dart';
class select extends StatelessWidget {
  const select({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title:Text(
              "EduVisitHub",
            style: TextStyle(
              color:Colors.white,
              fontSize: 23
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 4
            ),
            child: Text("Hello,",style: TextStyle(color: Colors.white,fontSize: 20),),
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
             Padding(
               padding: const EdgeInsets.all(8),
               child: CircleAvatar(
                backgroundImage: AssetImage("images/illustrator.jpg"),
                 ),
             ),
          ],
        ),
      ),
          body: SingleChildScrollView(
            child: Column(
        children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Icon(Icons.menu_outlined),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(
            //         top: 10,
            //         right: 15
            //       ),
            //       child: CircleAvatar(
            //         backgroundImage: AssetImage("images/illustrator.jpg"),
            //       ),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(
                right: 190,
                top: 20
              ),
              child: Text("Lets Connect!",
              style: TextStyle(
                fontSize: 27,
                // fontStyle: FontStyle.italic,
                color: Colors.black,
                // fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10),
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
                  width: 180,
                  margin: EdgeInsets.only(
                    left: 230
                  ),
                  child: Image(image: AssetImage("images/grave.png")),
                ),
                Positioned(
                  top: 50,
                  right: 135,
                  child: Text(
                    "Let's grow together serves as\n"
                    "rallying cry for unity, mutual\n"
                    "support, and shared success in\n"
                    "both educational and professional\n"
                    "endeavors",
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),
                      ),
                ),
                Positioned(
                  top: 160,
                  right: 250,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      "Explore",
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      fixedSize: Size(120,40),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 130,
                        bottom: 165
                      ),
                      child: Wrap(
                        children: [
                          Text(
                            "Let's grow Together",
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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(
              right: 270
            ),
            child: Text("Category",
            style: TextStyle(
                fontSize: 23,
                fontStyle: FontStyle.italic,
                // color: Colors.black
                ),
                 ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
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
                    height: 100.0,
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
                            right: 50,
                          ),
                          child: Text(
                            "For Teachers",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                          ),
                         child: Text(
                           'We appreciate your interest in joining our team of educators',
                             style: TextStyle(
                               fontSize: 16.0,
                               color: Colors.black
                             )
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
                //   top: 112,
                //   left: 285,
                //   child: GestureDetector(
                //     onTap: () {
                //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                //
                //       print('Link clicked!');
                //       // You can navigate to a new screen or open a URL, etc.
                //     },
                //     child: Text(
                //       'Click here',
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
            SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dept()));
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
                    // color: Colors.black,
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
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/564x/d4/2c/df/d42cdfcae91ea14c0cf48c0f6344cba4.jpg" ),
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
                            right: 52,
                          ),
                          child: Text(
                            "For Students",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                          ),
                          child: Text(
                              'We appreciate your interest in joining our team of educators',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black
                              )
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
                //   top: 113,
                //   left: 285,
                //   child: GestureDetector(
                //     onTap: () {
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Dept()));
                //
                //       print('Link clicked!');
                //       // You can navigate to a new screen or open a URL, etc.
                //     },
                //     child: Text(
                //       'Click here',
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
      ],
    ),
          ),
    );
  }
}
