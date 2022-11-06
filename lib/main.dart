import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todolist/app/my_app.dart';

void main() async {
  //init the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}
