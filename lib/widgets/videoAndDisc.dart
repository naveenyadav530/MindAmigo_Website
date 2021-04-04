
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VideoDisc extends StatefulWidget {
  @override
  _VideoDiscState createState() => _VideoDiscState();
}

class _VideoDiscState extends State<VideoDisc> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          color: Colors.red,
          height: 300,
          width: 550,
          child: Container(
            color: Colors.blue,
            height: 10,
            width: 20,
            child: Container(
              height: 10,
                width: 20,
                child: Image.asset("assets/images/youtube.png")),
          ),
        ),
        
        Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(20),
          color: Colors.pink,
          child:  Text("Hello World"),
          ),

      ],
    );
  }
}
