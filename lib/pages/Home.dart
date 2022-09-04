import 'package:flutter/material.dart';
import 'package:formis/components/custom_componets.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MY TEXT",
              style: TextStyle(color: Colors.teal, fontSize: 30.0),
            ),
            SizedBox(
              height: 8,
            ),
            customButton(),
            SecondCustomButton("my text"),
            SecondCustomButton("other text"),
            SecondCustomButton("text 3"),
          ],
        ),
      ),
    );
  }
}
