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

// class CustomErrorAlert extends StatelessWidget {
//   // const CustomErrorAlert({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SnackBar(
//       content: Row(
//         children: [
//           Icon(Icons.error),
//           SizedBox(
//             width: 20,
//           ),
//           Text(
//             "enter something",
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.amber[200],
//     );
//   }
// }
