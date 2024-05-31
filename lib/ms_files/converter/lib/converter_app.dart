import 'package:flutter/material.dart';
import 'main/converter_home.dart';

const Color globalColor = Color.fromARGB(255, 252, 252, 252);

class ConverterApp extends StatelessWidget {
  const ConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Dev Tools - Model To Dto Converter",
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 60, 62, 63),
          useMaterial3: true
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(255, 101, 121, 156),
            title: const Text("Model To Dto Converter",
            style: TextStyle(
              color: Colors.white
            ),),
            actions: [
          IconButton(
            tooltip: "Home",
            color: Colors.white,
            highlightColor: Colors.amber,
            icon: const Icon(
              Icons.home,
              size: 30,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
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
            tooltip: "Array Counter",
            color: Colors.white,
            highlightColor: Colors.amber,
            icon: const Icon(
              Icons.plus_one,
              size: 30,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, "/counter");
            },
          )
        ],
          ),
          body: const ConverterHome(),
        ));
  }
}
