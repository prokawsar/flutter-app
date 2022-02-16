import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter App'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/photo.jpg'),
                  ),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 16),
                  ),
                  // Card(
                  //   margin:
                  //       EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  //   color: Colors.white,
                  //   child: ListTile(
                  //     leading: Icon(
                  //       Icons.phone,
                  //       color: Colors.blue,
                  //     ),
                  //     title: Text('01915-983757'),
                  //   ),
                  // ),
                ],
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    ));

// children: [
// Container(
// width: 150,
// height: 200,
// child: const Image(
// image: NetworkImage(
// 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
// ),
// ),
// Container(
// width: 150,
// height: 200,
// child: const Image(
// image: NetworkImage(
// 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
// ),
// ),
// ],
