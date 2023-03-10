import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'add_home_page.dart';

class EnterWithPin extends StatefulWidget {
  const EnterWithPin({Key? key}) : super(key: key);

  @override
  _EnterWithPinState createState() => _EnterWithPinState();
}

class _EnterWithPinState extends State<EnterWithPin> {
  final List<String> buttonValues = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    ' ',
    '0',
    ' ',
  ];
  TextEditingController pinController = TextEditingController();
  void handleButtonPress(String buttonValue) {
    String currentPin = pinController.text;
    print("Current Pin-------------------$currentPin----------------");
    String newPin = currentPin + buttonValue;
    print("New Pin-------------------$newPin----------------");
    pinController.text = newPin;
    print("Controller-------------------${pinController.text}----------------");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
              "https://img.etimg.com/thumb/msid-84473585,width-650,height-488,imgsize-2273031,,resizemode-75/bitcoin.jpg",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Enter Your PIN",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Access Your Account with your 4-digit PIN",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          PinCodeTextField(
            textStyle: const TextStyle(fontSize: 10),
            mainAxisAlignment: MainAxisAlignment.center,
            length: 4,
            readOnly: true,
            showCursor: false,
            obscureText: true,
            animationType: AnimationType.fade,
            /*  obscuringCharacter: ".", */
            obscuringWidget: const Text(
              "",
            ),
            pinTheme: PinTheme(
              fieldWidth: 15,
              fieldOuterPadding: const EdgeInsets.all(5),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              inactiveFillColor: Colors.grey,
              shape: PinCodeFieldShape.circle,
              activeFillColor: Colors.white,
            ),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.black,
            enableActiveFill: true,
            controller: pinController,
            onCompleted: (v) {
              setState(() {
                if (v == "1234") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddHomePage()),
                  );
                }
              });

              print("On Completed-------------$v----------------");
              print("Completed");
            },
            onChanged: (value) {
              /*  setState(() {
      pinController.text = value;
    });
      print("Value--------------$value----------"); */
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
            appContext: context,
          ),
          const Spacer(
            flex: 5,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot PIN?",
                style: TextStyle(color: Color(0xffFFD700)),
              )),
          const Spacer(),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 3,
                  mainAxisExtent: 45),
              itemCount: buttonValues.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (index == 11) {
                      /*   */
                      if (pinController.text != null &&
                          pinController.text.length > 0) {
                        var newCheck = pinController.text
                            .substring(0, pinController.text.length - 1);
                        pinController.text = newCheck;
                        print(
                            "NewCheck------------------$newCheck--------------------");
                      }
                      /*     pinController.clear(); */
                    }
                    handleButtonPress(buttonValues[index]);
                    /* pinController.text =buttonValues[index]; */
                    print(
                        "1234------------------${buttonValues[index]}----------");
                    print(
                        "Check------------------${pinController.text}----------");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 0.2, color: Colors.grey)),
                    child: index == 11
                        ? Transform.scale(
                            scaleX: -1,
                            child: const Iconify(
                              Uil.cancel,
                              color: Colors.white,
                            ))
                        : Center(
                            child: Text(
                            buttonValues[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
