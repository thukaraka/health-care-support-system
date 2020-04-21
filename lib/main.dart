import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcaredecision/pages/Home.dart';
void main() => runApp(MaterialApp(
  routes: {

    '/': (context) => Home(),
    '/home': (context) => Home(),


  },
));
