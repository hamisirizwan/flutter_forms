import 'package:flutter/material.dart';
import 'package:formis/pages/LoginPage.dart';

Widget customButton() {
  return ElevatedButton(onPressed: () {}, child: Text("good progress"));
}

class SecondCustomButton extends StatelessWidget {
  // const SecondCustomButton({ Key? key }) : super(key: key);
  String text;
  // String color;

  SecondCustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(primary: Colors.black),
      child: Text(text),
    );
  }
}
