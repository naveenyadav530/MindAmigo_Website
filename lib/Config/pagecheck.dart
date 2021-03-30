import 'package:flutter/material.dart';
import 'package:website/Config/responsive_widget.dart';
import 'package:website/Pages/homepage.dart';
class PageCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)? MaterialApp(
      title: 'Mind Amigo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    ):MaterialApp(
      title: 'Mind Amigo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MindAmigo'),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
