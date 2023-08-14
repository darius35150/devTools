import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../convert/convert.dart';

class ConverterHomeWeb extends StatefulWidget {
  const ConverterHomeWeb({super.key});

  @override
  State<ConverterHomeWeb> createState() => _ConverterHomeWeb();
}

class _ConverterHomeWeb extends State<ConverterHomeWeb> {
  final inputTextFormFieldController = TextEditingController();
  var outputTexTFormFieldController = TextEditingController();
  late Convert convert;
  double buttonElevation = 6;

  convertData() {
    setState(() {
      if(inputTextFormFieldController.text.isEmpty) {
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Model To Dto Converter'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('You must place model text before converting',),
                  ],
                ),
              ),
              actions: <Widget>[
                Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: buttonElevation,
                        backgroundColor:const Color.fromARGB(255, 101, 121, 156)
                      ),
                      child: const Text('Ok',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
              ],
            );
          },
        );
      }else{
        convert = Convert(inputTextFormFieldController);
        outputTexTFormFieldController.text = convert.convertModelToDto();
      }
    });
  }

  clearData(){
    setState(() {
      inputTextFormFieldController.clear();
      outputTexTFormFieldController.clear();
    });
  }

  copyData() async{
    await Clipboard.setData(ClipboardData(text: outputTexTFormFieldController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              controller: inputTextFormFieldController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Place model code here'),
              style: const TextStyle(
                color: Colors.black
              ),)),
      const SizedBox(height: 4),
      Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: buttonElevation,
              backgroundColor:const Color.fromARGB(255, 101, 121, 156)
            ),
            onPressed: convertData,
            child: const Text('Submit',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),
          const SizedBox(width: 8,),
          ElevatedButton(
          
            style: ElevatedButton.styleFrom(
              elevation: buttonElevation,
              backgroundColor: const Color.fromARGB(255, 101, 121, 156)
            ),
            onPressed: clearData,
            child: const Text('Clear All',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),
        ],
      ),
      
      Container(
          margin: const EdgeInsets.fromLTRB(0, 55, 0, 0),
          child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              controller: outputTexTFormFieldController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Converted Dto Code shows here'))),
      
      const SizedBox(height: 4,),
      Row(
      children: [ 
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: buttonElevation,
              backgroundColor: const Color.fromARGB(255, 101, 121, 156)
            ),
            onPressed: copyData,
            child: const Text('Copy',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
        )]),
    ]);
  }
}