import 'package:flutter/material.dart';
import 'package:flutter_tz_project/screens/home_screen.dart';
import 'package:flutter_tz_project/subs.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Экран с подпиской'),
        ),

        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text('Выбор подписки: ', 
              style: TextStyle(fontSize: 18)
              ),

              const SizedBox(
                height: 40,
              ),

              Container(
                padding: const EdgeInsets.all(10),
                color: const Color(0xFFDDDDDD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        Text('Месяц', style: TextStyle(
                          fontSize: 20
                        )),

                        Text('200р', style: TextStyle(
                          fontSize: 20
                        ),)
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                padding: const EdgeInsets.all(10),
                color: const Color(0xFFDDDDDD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        Text('год', style: TextStyle(
                          fontSize: 20
                        )),

                        Text('скидка 10%', style: TextStyle(
                          fontSize: 20
                        ),)
                      ],
                    ),

                    Text('2160р', style: TextStyle(
                      fontSize: 22
                    ))
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              ElevatedButton(
                child: const Text('Купить подписку'),
                onPressed: () async {
                  await SubsService.buy();

                  Navigator.pushAndRemoveUntil(context, 
                  MaterialPageRoute(builder: (context) => const HomeScreen()), 
                  (route) => false,
                  );
                },
                )
            ],
          ),
        ),
      ),
    );
  }
}