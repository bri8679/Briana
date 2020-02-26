import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Calculator',
       style: TextStyle(
       ),
       ),
      ),
       backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Text(result,
              textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 90,
                      color: Colors.white,
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               getCircleButton('AC'),
                getCircleButton('+/-'),
                getCircleButton('%'),
                getCircleButton('/'),
                   ]
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getCircleButton('7'),
                getCircleButton('8'),
                getCircleButton('9'),
                getCircleButton('*'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getCircleButton('4'),
                getCircleButton('5'),
                getCircleButton('6'),
                getCircleButton('-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getCircleButton('1'),
                getCircleButton('2'),
                getCircleButton('3'),
                getCircleButton('+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getCircleButton('0'),
                getCircleButton('.'),
                getCircleButton('='),
              ],
            )
                ],
              )
            );
          }
      }
  
  FlatButton getCircleButton(
      String buttonText, {
        Color buttonColor = Colors.white30,
        Color textColor = Colors.white,
        }){
    return FlatButton(
      onPressed: () {

      },
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 45,
          color: textColor,
        ),
      ),
      color: buttonColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(15.0),
    );
  }
//FlatButton getRoundRectButton(
//String buttonText, (

//)
//)
