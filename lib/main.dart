import 'package:calc_time_to_planet/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: calcPage(),
    );
  }
}

class calcPage extends StatefulWidget {
  const calcPage({super.key});

  @override
  State<calcPage> createState() => _calcPage();
}

class _calcPage extends State<calcPage> {
  String valueText = '';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('惑星までの速度計算'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
              TextField(
                onChanged: (value) {
                  valueText = value;
                },
                decoration: InputDecoration(
                  hintText: 'あなたの50Mのタイムを入力してください。'
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(valueText),)
                  );
                }, 
                child: Text('計算開始'),
              )
            ]
          ),
        ),
      );
  }
}