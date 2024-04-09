import 'package:flutter/material.dart';
import 'package:mobile_app/homepage.dart';
import 'package:mobile_app/perdet.dart';
class per extends StatefulWidget {
  const per({super.key});

  @override
  State<per> createState() => _perState();
}

class _perState extends State<per> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _lastnameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _disabilityController = TextEditingController();
    final _dateofbirthController = TextEditingController();
    final _statusController = TextEditingController();
    final _otherdisabilitygroupController = TextEditingController();
    final _genderController = TextEditingController();
    final _religionController = TextEditingController();
    final _martialController = TextEditingController();
    final _experController = TextEditingController();
    final _positionController = TextEditingController();
    final _deptController = TextEditingController();
    final _fromdateController = TextEditingController();
    final _todateController = TextEditingController();
    final _durationController = TextEditingController();
    final _nationController = TextEditingController();
    final _employeerController = TextEditingController();
    bool _submitted = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle:true,
          title: Text(
              "Put Details",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),
          ),
    leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
    }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
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
        child: Container(
          margin: EdgeInsets.only(left: 40,top: 10),
          width: 320,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Enter your first name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The UserName");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _lastnameController,
                      decoration: InputDecoration(
                          labelText: "Enter your Last name",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The lastname");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Enter your Gmail",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.email,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The Email Address");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      decoration: InputDecoration(
                          labelText: "Enter your Password",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Password";
                        }else if(val.length < 6){
                          return "the password must be a 8 digits";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _disabilityController,
                      decoration: InputDecoration(
                        labelText: "Disability Group",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The Disability Group");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _dateofbirthController,
                      decoration: InputDecoration(
                        labelText: "Date Of Birth",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The Date Of Birth");
                        }else if(val!.length<4){
                          return("Mention Correct Dateofbirth");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _statusController,
                      decoration: InputDecoration(
                          labelText: "Status",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The status");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      controller: _otherdisabilitygroupController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "other Disability Group",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.email,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if (val!.isEmpty) {
                          return("Enter The other Disability Group");
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _genderController,
                      decoration: InputDecoration(
                          labelText: "Gender",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Gender";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _religionController,
                      decoration: InputDecoration(
                          labelText: "Religion",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Religion";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _martialController,
                      decoration: InputDecoration(
                          labelText: "Martial Status",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the martial Status";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _experController,
                      decoration: InputDecoration(
                          labelText: "Teaching Expereince",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Teaching Expereince";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _positionController,
                      decoration: InputDecoration(
                          labelText: "Position",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Position";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _deptController,
                      decoration: InputDecoration(
                          labelText: "Department",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Department";
                        }else if(val.length < 4){
                          return "the password must be a 8 digits";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _fromdateController,
                      decoration: InputDecoration(
                          labelText: "From Date",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the From Date";
                        }else if(val.length < 6){
                          return "the password must be a 8 digits";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _todateController,
                      decoration: InputDecoration(
                          labelText: "To-Date",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the To-Date";
                        }else if(val.length < 6){
                          return "the password must be a 8 digits";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _durationController,
                      decoration: InputDecoration(
                          labelText: "Duration",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Duration";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _nationController,
                      decoration: InputDecoration(
                          labelText: "Nation",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Nation";
                        }else if(val.length < 5){
                          return "the password must be a 8 digits";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _employeerController,
                      decoration: InputDecoration(
                          labelText: "Emplyeer",
                          // prefixIcon: IconButton(
                          //   icon: Icon(Icons.password,color: Colors.black,),
                          //   onPressed: () {},
                          // ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                      validator: (String ? val){
                        if(val!.isEmpty){
                          return"Enter the Emplyeer";
                        }else if(val.length < 5){
                          return "the password must be a 8 digits";
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  Container(
                      height: 53,
                      width: 320,
                      child: ElevatedButton(
                          onPressed: (){
                            if(_formkey.currentState!.validate()){
                              setState(() {
                                _submitted = true;
                              });
                              if(_submitted){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>perdet(
                                  name: _nameController.text,
                                  lastname: _lastnameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                  disablitygroup: _disabilityController.text,
                                  dateofbirth:_dateofbirthController.text,
                                  status: _statusController.text,
                                  others: _otherdisabilitygroupController.text,
                                  gender: _genderController.text,
                                  religion: _religionController.text,
                                  martial: _martialController.text,
                                  expereince: _experController.text,
                                  position: _positionController.text,
                                  dept: _deptController.text,
                                  fromdate: _fromdateController.text,
                                  todate: _todateController.text,
                                  duration: _durationController.text,
                                  nation: _nationController.text,
                                  employeer: _employeerController.text,
                                )));
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 15, backgroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          child: Text(
                              "submit",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                      )
                  ),
                  _submitted
                      ? Text(
                    "Form submitted successfully!",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  )
                      : SizedBox.shrink(),
                  SizedBox(height: 10,)
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
