import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
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
            color: Color.fromRGBO(35, 30, 61, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    elevation: 50,
                    color: const Color.fromRGBO(35, 30, 57, 1),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 440,
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.red,
                            foregroundImage: AssetImage("assets/migs1.jpg"),
                          ),
                          const SizedBox(height: 15),
                          const Text("Miguel Dailisan",
                              style: TextStyle(
                                  fontSize: 20,
                                  color:
                                      const Color.fromRGBO(152, 177, 203, 1))),
                          const Text("DAVAO CITY",
                              style: TextStyle(
                                  fontSize: 13,
                                  color:
                                      const Color.fromRGBO(152, 177, 203, 1))),
                          const SizedBox(height: 15),
                          const Text("Front End Developer",
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(152, 177, 203, 1))),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              button1("Message"),
                              button1("Following")
                            ],
                          ),
                          SizedBox(height: 30),
                          Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              color: Color.fromRGBO(31, 26, 54, 1),
                              padding: EdgeInsets.only(top: 13, left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("skills",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              152, 177, 203, 1),
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Wrap(
                                    direction: Axis.horizontal,
                                    children: [
                                      button2("UX/UI"),
                                      button2("Front End Development"),
                                      button2("HTML"),
                                      button2("CSS"),
                                      button2("JavaScript"),
                                      button2("React"),
                                      button2("Node")
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    )),
              ],
            )));
  }

  Padding button1(String a) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0))),
            side: MaterialStateProperty.all(BorderSide(
                color: Color(0xFF03bfcb),
                width: 1.0,
                style: BorderStyle.solid,
                strokeAlign: StrokeAlign.inside)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 18, vertical: 20)),
            backgroundColor:
                MaterialStateProperty.all(const Color.fromRGBO(35, 30, 57, 1)),
            foregroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(152, 177, 203, 1)),
            overlayColor:
                MaterialStateProperty.all(const Color.fromRGBO(3, 191, 203, 1)),
            textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 11, color: Colors.black))),
        child: Text(a),
      ),
    );
  }

  Padding button2(String b) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3, bottom: 5),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0))),
            side: MaterialStateProperty.all(BorderSide(
                color: Color.fromRGBO(152, 177, 203, 1),
                width: 0.5,
                style: BorderStyle.solid,
                strokeAlign: StrokeAlign.inside)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
            backgroundColor:
                MaterialStateProperty.all(const Color.fromRGBO(35, 30, 57, 1)),
            foregroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(152, 177, 203, 1)),
            overlayColor:
                MaterialStateProperty.all(const Color.fromRGBO(3, 191, 203, 1)),
            textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 11, color: Colors.black))),
        child: Text(b),
      ),
    );
  }
}
