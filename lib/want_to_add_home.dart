import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stripe_check/add_home_page.dart';

class AddYourHome extends StatefulWidget {
  const AddYourHome({super.key});

  @override
  State<AddYourHome> createState() => _AddYourHomeState();
}

class _AddYourHomeState extends State<AddYourHome> {
  /*  var futureAlbum;
  @override
  void initState() {
    // TODO: implement initState 
    super.initState();
    futureAlbum = lis
  } */
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddHomePage()),
                  );
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ))
          ],
          title: Text("Welcome to buy home"),
        ),
        body: Consumer<HomeProvider>(builder: (context, value, child) {
          if (provider.homeList.isEmpty) {
            return Center(
              child: Text("No Home"),
            );
          } else {
            return ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                shrinkWrap: true,
                itemCount: provider.homeList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text(provider.homeList[index]["mobile"]),
                    title: Text(
                      provider.homeList[index]["name"],
                      style: TextStyle(color: Colors.green),
                    ),
                    leading: Text(provider.homeList[index]["address"]),
                    trailing: IconButton(
                        onPressed: () {
                          provider.removemethod(index);
                        },
                        icon: Icon(Icons.more_vert)),
                  );
                });
          }
        }));
  }
}
