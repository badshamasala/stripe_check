import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: false,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(

              //Text
              background: Image.network(
            "https://media.istockphoto.com/id/860528756/photo/the-bandraworli-sea-link-mumbai-india.jpg?s=612x612&w=0&k=20&c=xT9TK7oYkP6TP62lHqP0H-9mfz9cWva4OcYEnt06cjc=",
            fit: BoxFit.cover,
          ) //Images.network
              ), //FlexibleSpaceBar
          expandedHeight: 200,
          backgroundColor: Colors.greenAccent[400],
          /*   leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {},
            ), */ //IconButton
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
        ), //SliverAppBar
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
              title: Center(
                child: Text('$index',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 40,
                        color: Colors.greenAccent[400]) //TextStyle
                    ), //Text
              ), //Center
            ), //ListTile
            childCount: 50,
          ), //SliverChildBuildDelegate
        ) //SliverList
      ], //<Widget>[]
    ) //CustonScrollView
        //Scaffold

        // Remove debug banner for proper
        // view of setting icon
        ); //MaterialApp
  }
}
