import 'dart:html';

import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundColor: Color(0xffAA1428),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffffffff),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xffAA1428),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff000042),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
