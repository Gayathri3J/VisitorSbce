import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Viewallvisitor extends StatefulWidget {
  const Viewallvisitor({super.key});

  @override
  State<Viewallvisitor> createState() => _ViewallvisitorState();
}

class _ViewallvisitorState extends State<Viewallvisitor> {
  List<Map<String, dynamic>> visitors = [];

  Future<void> fetchVisitorsData() async {
    final apiurl = Uri.parse("https://log-app-demo-api.onrender.com/getvistors");
    try {
      final response = await http.get(apiurl);
      if (response.statusCode == 200) {
        List data = json.decode(response.body);
        setState(() {
          visitors = List<Map<String, dynamic>>.from(data);
        });
        print("API called successfully");
      } else {
        throw Exception("API Data failed");
      }
    } catch (exception) {
      print(exception);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchVisitorsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD",
          style: TextStyle(fontWeight: FontWeight.bold),),
        leading: Image.network("https://cdn.universitykart.com//Content/upload/admin/2lpgcq2g.3mw.jpg",scale: 5,),
        actions: [IconButton(
          icon: Icon(Icons.logout),
          onPressed: ()=>Navigator.pop(context),)],
      ),
      body: ListView.builder(
        itemCount: visitors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(),
              child: ListTile(
                title: Text(visitors[index]["firstname"] ?? "No Firstname"),
                subtitle: Text(
                  (visitors[index]["lastname"] ?? "No Lastname")+
                      "\n" +
                      (visitors[index]["purpose"] ?? "No purpose") +
                      "\n" +
                      (visitors[index]["whomToMeet"] ?? "Unknown"),
                ),
                leading: CircleAvatar(
                  radius: 20,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm09_Y6zT012BqEo2bUpaTRWmIYuOC916iiGJzJ7nEGYoESBumhdt4qDsn3ZO-LhZe1fs&usqp=CAU",
                    ), ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}