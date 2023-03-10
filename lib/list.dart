import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stripe_check/json_check.dart';

class List1 extends StatefulWidget {
  const List1({Key? key}) : super(key: key);

  @override
  _List1State createState() => _List1State();
}

class _List1State extends State<List1> {
  @override
  void initState() {
    //TODO: implement initState
    super.initState();
  }

  var list1 = [
    "abcd",
    "abc1",
    "abc2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, i) {
          var newIndex = list[i].images;
          return Column(
            children: [
              ListTile(
                tileColor: const Color.fromARGB(255, 240, 240, 210),
                title: Text(list[i].name),
                leading: Text(list[i].id),
              ),
              CarouselSlider.builder(
                  itemCount: newIndex.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Image.network(newIndex[itemIndex]);
                  },
                  options: CarouselOptions(
                      enableInfiniteScroll: false, viewportFraction: 1)),
              
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}




