import 'package:flutter/material.dart';

class TrainerList extends StatefulWidget {
  const TrainerList({ Key? key }) : super(key: key);

  @override
  _TrainerListState createState() => _TrainerListState();
}

class _TrainerListState extends State<TrainerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   
        title: Text("Select your trainer"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
    return Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,color: Colors.black),
      shape: BoxShape.rectangle
    ),
      child: Column(
        children: [
        Text("Personal Yoga Trainer")
        ],
      ),
    );
      }),
    );
  }
}