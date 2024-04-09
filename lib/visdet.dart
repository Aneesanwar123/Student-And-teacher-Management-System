import 'package:flutter/material.dart';
import 'package:mobile_app/visitor.dart';
class visdet extends StatelessWidget {
  final String name;
  final String lastname;
  final String email;
  final String password;
  final String disablitygroup;
  final String dateofbirth;
  final String status;
  final String others;
  final String gender;
  final String religion;
  final String martial;
  final String expereince;
  final String position;
  final String dept;
  final String fromdate;
  final String todate;
  final String duration;
  final String nation;
  final String employeer;
  const visdet({super.key,
    required this.name,
    required this.lastname,
    required this.email,
    required this.password,
    required this.disablitygroup,
    required this.dateofbirth,
    required this.status,
    required this.others,
    required this.gender,
    required this.religion,
    required this.martial,
    required this.expereince,
    required this.position,
    required this.dept,
    required this.fromdate,
    required this.todate,
    required this.duration,
    required this.nation,
    required this.employeer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle:true,
          title: Text(
            "Put Details",
            style: TextStyle(
                fontSize: 25
            ),
          ),
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>visitor()));
          }, icon: Icon(Icons.arrow_back_ios_new)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xff6C33A3), Color(0xff8241B8)],
                )
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: 50
                ),
                child: Image.asset(
                  "images/back.png", // Replace with your image asset path
                  width: 200.0, // Set the desired width
                  height: 200.0, // Set the desired height
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(
                right: 200
              ),
              child: Text('name : ${name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 170,
              ),
              child: Text('lastname : ${lastname}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 180,
              ),
              child: Text('Email : ${email}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 120
              ),
              child: Text('password : ${password}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20
              ),
              child: Text('Disability Group : ${disablitygroup}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35
              ),
              child: Text('Date OF Birth : ${dateofbirth}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 150
              ),
              child: Text('Status : ${status}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 100
              ),
              child: Text('Others : ${others}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 100
              ),
              child: Text('Gender : ${gender}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 100
              ),
              child: Text('Religion : ${religion}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40
              ),
              child: Text('Martial : ${martial}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30
              ),
              child: Text('Expereince : ${expereince}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 80
              ),
              child: Text('Position : ${position}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30
              ),
              child: Text('Department: ${dept}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 70
              ),
              child: Text('From Date : ${fromdate}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30
              ),
              child: Text('Top Date : ${todate}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 80
              ),
              child: Text('Duration : ${duration}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 100
              ),
              child: Text('Nation : ${nation}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 40
              ),
              child: Text('Employeer : ${employeer}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}

