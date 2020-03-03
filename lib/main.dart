import 'package:flutter/material.dart';
import 'ui/home.dart';

void main()
{
  runApp(
    new MaterialApp(
      home: new Home(),
      title: "No todo app",
      debugShowCheckedModeBanner: false,
    )
  );
}