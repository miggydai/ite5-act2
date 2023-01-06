import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ));

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    elevation: 50,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 400,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(height: 15),
                          Text("Miguel Dailisan",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.blue)),
                          Text("Davao City",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.blue)),
                          SizedBox(height: 15),
                          Text("FrontEnd Developer",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.blue)),
                          SizedBox(height: 20),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 20)),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.lightBlue),
                                textStyle: MaterialStateProperty.all(TextStyle(
                                    fontSize: 10, color: Colors.black))),
                            child: const Text("Messege"),
                          )
                        ],
                      ),
                    )),
              ],
            )));
  }
}
