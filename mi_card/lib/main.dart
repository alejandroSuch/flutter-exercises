import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://es.gravatar.com/userimage/438905/421a578e8e3fe4aec94bd1bd0bf14e7b.png'),
                  ),
                  Text(
                    'Alejandro Such',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.teal.shade50,
                      fontFamily: 'BungeeShade',
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    'SOFTWARE DEVELOPMENT ENGINEER',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal.shade50,
                        fontFamily: 'OpenSans',
                        letterSpacing: 1.5),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade50,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.teal.shade900,
                      ),
                      title: Text(
                        '+34 661 61 12 22',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'OpenSans'),
                      ),
                    )
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 25,
                      right: 25,
                    ),
                    child: ListTile(
                        leading: Icon(
                          Icons.mail,
                          size: 25,
                          color: Colors.teal.shade900,
                        ),
                        title: Text(
                          'alex@soy.yo',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                  ),
                ],
              ),
            )));
  }
}
