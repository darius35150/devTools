import 'package:flutter/material.dart';


class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 101, 121, 156),
          title: const Text(
            "Dev Tools",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
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
                Navigator.pushNamed(context, "/webnotes");
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
                Navigator.pushNamed(context, "/webconverter");
              },
            )
          ],
        ),
        body: const Center(
            child: Text(
          "Welcome to the Dev Tools Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        )));
  }
}
