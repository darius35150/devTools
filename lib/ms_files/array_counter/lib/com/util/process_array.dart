import 'dart:convert';

import 'package:flutter/material.dart';

class ProcessArray {
  int processArray(TextEditingController controller) {
    int length = 0;
    if(controller.text.isEmpty){
      List<dynamic> list = json.decode(controller.text);
      length = list.length;
    }
    return length;
  }
}
