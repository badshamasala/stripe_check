import 'package:flutter/material.dart';
import 'package:language_tool/language_tool.dart';
import 'package:torch_light/torch_light.dart';


class TorchController extends StatefulWidget {

  @override
  State<TorchController> createState() => _TorchControllerState();
}

class _TorchControllerState extends State<TorchController> {
  bool isOn =true;
  final tool = LanguageTool();
masala() async{


final result = await tool.check('you would have gone there ');

result.forEach(print);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('torch_light example app'),
      ),
      body: FutureBuilder<bool>(
        future: _isTorchAvailable(context),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData && snapshot.data!) {
            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      child:  Text('torch'),
                      onPressed: () async {
                     masala();
                      
                  /*       _enableTorch(context); */
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Disable torch'),
                      onPressed: () {
                        _disableTorch(context);
                      },
                    ),
                   ),
                ),
              ],
            );
          } else if (snapshot.hasData) {
            return const Center(
              child: Text('No torch available.'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<bool> _isTorchAvailable(BuildContext context) async {
    try {
      return await TorchLight.isTorchAvailable();
    } on Exception catch (_) {
    
      rethrow;
    }
  }

  Future<void> _enableTorch(BuildContext context) async {
    try {
      await TorchLight.enableTorch();
    } on Exception catch (_) {

    }
  }

  Future<void> _disableTorch(BuildContext context) async {
    try {
      await TorchLight.disableTorch();
    } on Exception catch (_) {
   
    }
  }
}