import 'package:flutter/material.dart';
import 'package:flutter_tz_project/screens/pay_screen.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
      
              const Text ('Привет, это начальное меню', 
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),),

              const SizedBox(
                height: 50,
              ),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PayScreen()),
                  );
                }, 
               child: Text('Продолжить'))
      
              
      
      
            ],
          ),
        ),
      ),
    );
  }
}