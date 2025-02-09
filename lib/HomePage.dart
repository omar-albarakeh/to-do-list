import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.orange, Colors.red],
          )),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("To-Do List",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            centerTitle: true,
          ),
        ),
      ),
      body: Column(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.orange, Colors.red],
              ).createShader(bounds);
            },
            child: Text(
              "Gradient Text",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Material(
        shape: CircleBorder(),
        elevation: 4,
        child: InkWell(
          onTap: _showDialog,
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.orange, Colors.red],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Missions"),
          content: TextField(

          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel",style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Add",style: TextStyle(color: Colors.green),),
            ),
          ],
        );
      },
    );
  }
  }
