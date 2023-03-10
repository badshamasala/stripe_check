import 'package:flutter/material.dart';

class SwitchCase extends StatefulWidget {
  const SwitchCase({Key? key}) : super(key: key);

  @override
  _SwitchCaseState createState() => _SwitchCaseState();
}

class _SwitchCaseState extends State<SwitchCase> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {

                method();
              },
              child: Text('a'))
        ],
      ),
    );
  }

  method() {
    var grade = "A";
    switch (grade) {
      case "A":
        {
          print("Excellent");
        }
        break;

      case "B":
        {
          print("Good");
        }
        break;

      case "C":
        {
          print("Fair");
        }
        break;

      case "D":
        {
          print("Poor");
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  }
}
