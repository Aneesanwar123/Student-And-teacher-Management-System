import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/loginpage.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}
class _signupState extends State<signup> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future<void> _signUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Additional logic after successful signup
      print("User signed up: ${userCredential.user!.email}");
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    } on FirebaseAuthException catch (e) {
      print("Failed to sign up: $e");
      // Handle error, e.g., show an error message to the user
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 40,top: 40),
          width: 320,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Container(
                    height: 150,
                      child: Image(image: AssetImage("images/erase.png"))),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: SizedBox(height: 3),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right:0,
                        ),
                        child: Text(
                            "Hi There!",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height:1),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 0
                        ),
                        child: Text(
                            "Create a new Account",
                          style: TextStyle(
                            fontSize: 15
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: "Enter your first name",
                      prefixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                        onPressed: () {},
                      ),
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
                  SizedBox(height: 30,),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _lastnameController,
                    decoration: InputDecoration(
                        labelText: "Enter your Last name",
                        prefixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          onPressed: () {},
                        ),
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
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Enter your Gmail",
                        prefixIcon: IconButton(
                          icon: Icon(Icons.email,color: Colors.black,),
                          onPressed: () {},
                        ),
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
                  SizedBox(height: 30,),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: "Enter your gmail Password",
                        prefixIcon: IconButton(
                          icon: Icon(Icons.password,color: Colors.black,),
                          onPressed: () {},
                        ),
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
                  SizedBox(height: 35,),
                  Container(
                    height: 53,
                      width: 320,
                      child: ElevatedButton(
                          onPressed: (){
                            if(_formkey.currentState!.validate()){
                              _signUp();
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
                          )
                      )
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}


