import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                // Photo
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 60,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Name
              Container(
                child: Text("Ishaan Khullar"),
              ),
              SizedBox(
                height: 20,
              ),
              // Member type

              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25.0)),
                child: Center(
                  child: Text("Free Member"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              // Box
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25.0)),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildButton('H'),
                  buildButton('aH'),
                  buildButton('H'),
                  buildButton('H'),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container buildButton(String txt) {
  return Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        child: Text(
          txt,
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white38,
            primary: Colors.white,
            minimumSize: Size(250, 60),
            padding: EdgeInsets.symmetric(horizontal: 20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            shadowColor: Colors.white),
        onPressed: () {},
      ));
}
