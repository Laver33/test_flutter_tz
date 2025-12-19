import 'package:flutter/material.dart';
import 'package:flutter_tz_project/screens/home_screen.dart';
import 'package:flutter_tz_project/screens/load_screen.dart';
import 'package:flutter_tz_project/subs.dart';

void main() {
  runApp(MainApp()); 
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(
        future: SubsService.Subscribed(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (snapshot.data == true){
            return HomeScreen();
          } else {
            return LoadScreen();
          }
        }

        ),
    );
  }
}


