import 'package:flutter/material.dart';
import 'package:visitorsbce/pages/security.dart';
import 'package:visitorsbce/pages/admin.dart';
import 'addvisitor.dart';



class MenuSystem extends StatefulWidget {
  const MenuSystem({super.key});

  @override
  State<MenuSystem> createState() => _MenuSystemState();
}

class _MenuSystemState extends State<MenuSystem> {

  final TextEditingController username= TextEditingController();
  final TextEditingController password= TextEditingController();
  String? _errorMessage;

  void login(){
    String uname= username.text;
    String pswd= password.text;
    if( uname=="admin"&& pswd=="12345"){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => Viewallvisitor()),
      );
    }
    else if(uname=="sbce"&&pswd=="sbce123"){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) =>SecurityLogin()),
      );
    }
    else{
      setState(() {
        _errorMessage= "Invalid username or password";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("SREE BUDDHA COLLEGE OF ENGINEERING, PATTOOR",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 5,),
                Text("LOGIN",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(height: 5),
                CircleAvatar(
                    backgroundImage: NetworkImage("https://cdn.universitykart.com//Content/upload/admin/2lpgcq2g.3mw.jpg"),
                    radius: 70),
                SizedBox(height: 20,),
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      labelText: "Username",
                      hintText: "Enter your username",
                      prefixIcon: Icon(Icons.account_box),
                      prefixIconColor: Colors.green[900],

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      labelText: "Password",
                      hintText: "Enter your password",
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.green[900],

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 49,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[900],
                          foregroundColor: Colors.white,

                        ),
                        onPressed: login, child: Text("LOGIN")),
                  ),
                ),
                if(_errorMessage!=null)...[
                  SizedBox(height: 20,),
                  Text(_errorMessage!,
                  style: TextStyle(
                    color: Colors.red,fontWeight: FontWeight.bold
                  ),),
                ],

              ],
            ),
          ),
        ),
      ),
    );
  }
}