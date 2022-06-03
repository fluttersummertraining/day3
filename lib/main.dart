import 'package:flutter/material.dart';

Widget roundedSquare({
  double width = 150,
  double height = 150,
  required Color bgColor,
  required Color textColor,
  required String text,
}) {
  return Container(
    child: Center(
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
      ),
    ),
    width: width,
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    height: height,
    decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.blue, width: 1)),
  );
}

void main() {
  runApp(
    MaterialApp(
      home: FirstWidget(),
    ),
  );
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: double.infinity),
            SizedBox(
              height: 10,
            ),
            roundedSquare(
                textColor: Colors.pink,
                bgColor: Colors.black,
                text: "Square135"),
            SizedBox(
              height: 10,
            ),
            roundedSquare(
              text: "Square241",
              bgColor: Colors.orange,
              textColor: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            roundedSquare(
                bgColor: Colors.green,
                textColor: Colors.yellow,
                text: "Square365"),
            SizedBox(
              height: 10,
            ),
            roundedSquare(
                width: 200,
                height: 200,
                textColor: Colors.black,
                bgColor: Colors.yellow,
                text: "Square1"),
          ],
        ),
      ),
    );
  }
}
