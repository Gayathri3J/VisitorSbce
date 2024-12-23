import 'package:flutter/material.dart';
import 'addvisitor.dart';
import 'package:visitorsbce/pages/admin.dart';

class SecurityLogin extends StatelessWidget {
  const SecurityLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SECURITY LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Image.network("https://cdn.universitykart.com//Content/upload/admin/2lpgcq2g.3mw.jpg",scale: 5,),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.green[800],
                child:CircleAvatar( backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/8449/8449325.png"),
                  radius: 78,
                ),),
              SizedBox(height: 20),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.green[900],
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        // Navigate to Add Visitor page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Addvisitor()),
                        );
                      },
                      child: Text(
                        "Add Visitor",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Add space between the buttons
                  SizedBox(
                    height: 50,
                    width: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.green[900],
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Viewallvisitor()),
                        );
                      },
                      child: Text(
                        "View All Visitors",
                        style: TextStyle(fontSize: 14),
                      ),
                  ),
                ),
          ],
              )
            ],
          ),
        ),
      ),
    );
  }
}