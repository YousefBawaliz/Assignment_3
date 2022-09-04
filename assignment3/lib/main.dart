import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Here are 2 buttons"),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color.fromARGB(255, 190, 88, 81)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() => print("First Button Pressed")),
                  child: Text("Button1",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    textStyle: TextStyle(color: Colors.red),
                    shadowColor: Colors.black,
                    elevation: 20,
                  ),
                  onLongPress: () => print("Hello there"),
                ),
                Divider(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: (() => print("second Button Pressed")),
                  child: Text("Button2"),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    onPrimary: Colors.purple,
                    primary: Colors.amber,
                    fixedSize: Size(100, 90),
                    shadowColor: Color.fromARGB(255, 24, 2, 61),
                    elevation: 15,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
