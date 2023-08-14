import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 101, 121, 156),
        title: const Text("Dev Tools",
        style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(
            tooltip: "Apps",
            color: Colors.white,
            highlightColor: Colors.amber,
            icon: const Icon(
              Icons.apps,
              size: 30,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, "/apps");
            },
          ),
          IconButton(
            tooltip: "Notes",
            color: Colors.white,
            highlightColor: Colors.amber,
            icon: const Icon(
              Icons.list,
              size: 30,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, "/notes");
            },
          ),
          IconButton(
            tooltip: "Model To Dto Converter",
            color: Colors.white,
            highlightColor: Colors.amber,
            icon: const Icon(
              Icons.difference,
              size: 30,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, "/converter");
            },
          )
        ],
      ),
      body: const Center (
        child: Text(

          "Welcome to the Dev Tools Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
        ),
      )
    ));
  }
}
