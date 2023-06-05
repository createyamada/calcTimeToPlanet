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
                decoration: InputDecoration(
                  hintText: 'あなたの50Mのタイムを入力してください。'
                ),
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: Text('計算開始'),
              )
            ]
          ),
        ),
      );
  }
}