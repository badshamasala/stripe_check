import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetPractise extends StatefulWidget {
  const GetPractise({Key? key}) : super(key: key);

  @override
  _GetPractiseState createState() => _GetPractiseState();
}

class _GetPractiseState extends State<GetPractise> {
  GetDekho getkar = Get.put(GetDekho());
  var num1 = 0;
  @override
  Widget build(BuildContext context) {
    print("sssdd--------------------------------------");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<GetDekho>(
            /*      init: GetDekho(),
            initState: (_) {}, */
            builder: (_) {
              return Text("${getkar.num}");
            },
          ),
          ElevatedButton(
              onPressed: () {
                getkar.method();
              },
              child: Text("Increment"))
        ],
      ),
    );
  }
}

class GetDekho extends GetxController {
  RxInt num = 0.obs;

  method() {
    num++;
    /*  update(); */
  }

  List list = [
    "1",
    "2",
    "3",
  ];
  
  mes() {
    var length = list.length;
    var reactive = list.reactive;
    var reversed = list.reversed;
    var hashCode = list.hashCode;
    var runtimeType = list.runtimeType;
    print(list);
    print(length);
    print(reactive);
    print(hashCode);
    print(reversed);
    print(runtimeType);
    print("----------------------");
    list.add("5");
    list.addAll(["3", "2"]);
    list.addIf(list.length == 6, "9");

    print(list);
    print(length);
    print(reactive);
    print(hashCode);
    print(reversed);
    print(runtimeType);
  }

   @override
  void onInit() {
    // TODO: implement onInit
    mes();
    super.onInit();
  }
}
