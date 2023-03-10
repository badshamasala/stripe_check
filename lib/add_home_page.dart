import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:stripe_check/colors.dart';

class AddHomePage extends StatefulWidget {
  const AddHomePage({Key? key}) : super(key: key);

  @override
  _AddHomePageState createState() => _AddHomePageState();
}

class _AddHomePageState extends State<AddHomePage> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      restorationId: "rashid",
      appBar: AppBar(
        title: const Text("Add your Home"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          children: [
            const SizedBox(
       height: 30,
            ),
            TextFormField(
              controller: provider.nameController,
              decoration: InputDecoration(
                isDense: true,
                errorStyle: TextStyle(fontSize: 8.sp, height: 0.2),
                labelText: 'Your Name',
                labelStyle: const TextStyle(
                    color: customTextColor,
                    fontFamily: 'Poppins',
                    fontSize: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(width: 0.5)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: customTextColor, width: 0.5)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xffED1B24), width: 0.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xff0087FF), width: 0.5)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              onChanged: (value) {
                // do something
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: provider.addressController,
              maxLines: 4,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                isDense: true,
                errorStyle: TextStyle(fontSize: 8.sp, height: 0.2),
                labelText: 'Your Home Address',
                labelStyle: const TextStyle(
                    color: customTextColor,
                    fontFamily: 'Poppins',
                    fontSize: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(width: 0.5)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: customTextColor, width: 0.5)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xffED1B24), width: 0.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xff0087FF), width: 0.5)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              onChanged: (value) {
                // do something
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: provider.mobileController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                isDense: true,
                errorStyle: TextStyle(fontSize: 8.sp, height: 0.2),
                labelText: 'Your Mobile No.',
                labelStyle: const TextStyle(
                    color: customTextColor,
                    fontFamily: 'Poppins',
                    fontSize: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(width: 0.5)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: customTextColor, width: 0.5)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xffED1B24), width: 0.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xff0087FF), width: 0.5)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              onChanged: (value) {
                // do something
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () async {
                    await provider.listaddMethod();
                    Navigator.pop(context);
                    provider.nameController.clear();
                    provider.addressController.clear();
                    provider.mobileController.clear();
                    print(provider.homeList);
                  },
                  child: const Text("Save")),
            ),    
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}

class HomeProvider extends ChangeNotifier {
  List homeList = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  var newHome = {
    "name": "",
    "address": "",
    "mobile": "",
  };
  var newMap ={
   "az":""
  };
gun(){
  newMap.putIfAbsent("az", () => "za");
  print(newMap);
}

  /*    int index = index; */
  listaddMethod() {
    newHome = {
      "name": nameController.text,
      "address": addressController.text,
      "mobile": mobileController.text,
    };
    homeList.add(newHome);
    notifyListeners();
  }

  removemethod(index) {
    homeList.removeAt(index);
    notifyListeners();
  }

  var checkMap = {
    "name": "",
    "age": "",
    "gender": "",
    "mobile": "",
    "islogin": ""
  };

  map() {
    var length = checkMap.entries.length;
    print(length);
  }

}
