import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'main/notes_list_home.dart';

void main() async {

  runApp(const NotesListApp());
}

class NotesListApp extends StatelessWidget {
  const NotesListApp({super.key}); 

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
      home: NotesListHome(),
    );
  }
}
