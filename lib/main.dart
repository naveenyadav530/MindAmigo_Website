// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:website/pages/homepage.dart';
import 'package:website/styles/size_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          return OrientationBuilder(
              builder: (context, orientation){
                SizeConfig().init(constraints, orientation);
                return MaterialApp(
                  title: 'Welcome to Flutter',
                  home: Scaffold(
                      body: HomePage()
                  ),
                );
              });
        });

  }
}