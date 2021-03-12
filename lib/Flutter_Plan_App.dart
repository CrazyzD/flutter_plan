import 'package:flutter/widgets.dart';
import 'package:flutter_plan/models/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
class FlutterPlanApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

