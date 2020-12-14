import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                // type over the widget ctrl+Q we can get more details about tag
                radius: 50.0,
                backgroundImage: AssetImage(
                    'images/img1.jpg'), //must assign in pubspec.yaml file
              ),
              Text(
                "Vasiharan",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "SOFTWARE ENGINEER",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  // use to but div lines
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                //cards always white by default
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.pink,
                    ),
                    title: Text(
                      '+94767478280',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 2.5,
                        color: Colors.teal.shade900,
                      ),
                    )),
              ),
              Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.pink,
                    ),
                    title: Text(
                      'vasihh404@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 2.5,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  )),
              Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Image.asset(
                      'images/twitter2.png',
                      height: 50.0,
                      width: 50.0,
                      color: Colors.pink,
                    ),
                    title: Text(
                      '@VasiharanV',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 2.5,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  )),
              Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Image.asset(
                      'images/github2.png',
                      height: 50.0,
                      width: 50.0,
                      color: Colors.pink,
                    ),
                    title: Text(
                      'VasiiH',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 2.5,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      );

  }
}
