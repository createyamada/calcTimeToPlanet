
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.name);
  final String name;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('結果表示画面'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(name),
          ],
        ) ,
      ),
    );
  }
}