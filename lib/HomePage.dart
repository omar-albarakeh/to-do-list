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
          )
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("To-Do List" , style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
            centerTitle: true,
          ),
        ),
      ),
      body:Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        
      ),
    );
  }
}
