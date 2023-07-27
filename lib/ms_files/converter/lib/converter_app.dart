import 'package:flutter/material.dart';
import '../../app_run/app_runner.dart';
import '../../home/home.dart';
import 'package:dev_tools/ms_files/todo/lib/notes_list.dart';
import 'main/converter_home.dart';

const Color globalColor = Color.fromARGB(255, 252, 252, 252);

void main() {
  runApp(const ConverterApp());
}

class ConverterApp extends StatelessWidget {
  const ConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/converter",
        title: "Model To Dto Converter",
        theme: ThemeData(
          scaffoldBackgroundColor: globalColor,
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AppRunner()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NotesListApp()));
            },
          )
        ],
          ),
          body: const ConverterHome(),
        ));
  }
}