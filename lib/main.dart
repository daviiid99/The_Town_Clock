import 'package:flutter/material.dart';
import 'package:the_town_clock/exports.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  @override
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp]);
    return const MaterialApp(
      home: ClockScreenView(),
      debugShowCheckedModeBanner: false,

    );
  }
}