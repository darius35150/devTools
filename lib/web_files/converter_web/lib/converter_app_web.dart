import 'package:flutter/material.dart';
import '../../home_web/home_web.dart';
import 'package:dev_tools/web_files/todo_web/lib/notes_list_web.dart';
import 'main/converter_home_web.dart';

const Color globalColor = Color.fromARGB(255, 252, 252, 252);

void main() {
  runApp(const ConverterAppWeb());
}

class ConverterAppWeb extends StatelessWidget {
  const ConverterAppWeb({super.key});

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
                  MaterialPageRoute(builder: (context) => const HomeWeb()));
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
                  MaterialPageRoute(builder: (context) => const NotesListAppWeb()));
            },
          )
        ],
          ),
          body: const ConverterHomeWeb(),
        ));
  }
}