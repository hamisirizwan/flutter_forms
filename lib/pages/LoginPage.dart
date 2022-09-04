import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _authorcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WORKING WITH FORMS"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _titlecontroller,
                decoration: const InputDecoration(hintText: 'Enter Title'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _authorcontroller,
                decoration: const InputDecoration(hintText: 'Enter Title'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_authorcontroller.text == "" ||
                        _titlecontroller.text == "") {
                      final snackBar = SnackBar(
                        content: Row(
                          children: [
                            Icon(Icons.error),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "all fields should be filled",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        backgroundColor: Colors.amber[200],
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      print("enter something");
                    }
                    print(_authorcontroller.text);
                    // setState(() {
                    //   _authorcontroller.text = "";
                    // });
                  },
                  child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}
