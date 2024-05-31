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
            "Dev Tools - Notes",
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
            ),
            IconButton(
              tooltip: "Array Counter",
              color: Colors.white,
              highlightColor: Colors.amber,
              icon: const Icon(
                Icons.plus_one,
                size: 30,
              ),
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, "/webcounter");
              },
            )
          ],
        ),
        body: const Center(
            child: Text(
          "Welcome to the Dev Tools Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        )));
  }
}
