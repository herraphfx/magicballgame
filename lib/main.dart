import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(

      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
            print('I got clicked');
          },
          child: Image.asset('images/ball$ballNumber.png'),
          )
              
          ),

        ],
      ),
    );
  }
}


