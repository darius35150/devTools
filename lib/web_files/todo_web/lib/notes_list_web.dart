import 'package:flutter/material.dart';
import 'main/notes_list_home_web.dart';

void main() async {

  runApp(const NotesListAppWeb());
}

class NotesListAppWeb extends StatelessWidget {
  const NotesListAppWeb({super.key}); 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/notes",
      title: 'Dev List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: NotesListHomeWeb(),
    );
  }
}
