import 'package:dev_tools/web_files/array_counter/lib/com/util/process_array.dart';
import 'package:flutter/material.dart';

class CounterHomeWeb extends StatefulWidget {
  const CounterHomeWeb({super.key});

  @override
  State<CounterHomeWeb> createState() => _CounterHomeWeb();
}

class _CounterHomeWeb extends State<CounterHomeWeb> {
  TextEditingController controller = TextEditingController();
  ProcessArray process = ProcessArray();
  int arrayLength = 0;

  @override
  Widget build(BuildContext context) {
    processArray() {
      setState(() {
        arrayLength = process.processArray(controller);
      });
    }

    clearScreen() {
      setState(() {
        controller.clear();
        arrayLength = 0;
      });
    }

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
                tooltip: "Home",
                color: Colors.white,
                highlightColor: Colors.amber,
                icon: const Icon(
                  Icons.home,
                  size: 30,
                ),
                iconSize: 30,
                onPressed: () {
                  Navigator.pushNamed(context,"/webhome");
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
        body: Column(
      children: [
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          controller: controller,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: processArray,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 101, 121, 156),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: clearScreen,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 101, 121, 156),
                ),  
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
            )
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          "Number of Elements:  $arrayLength",
          style: const TextStyle(fontSize: 35, color: Colors.white),
        )
      ],
    ));
  }
}
