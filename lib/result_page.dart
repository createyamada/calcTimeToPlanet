
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.result);
  final Map result;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('結果表示画面'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('太陽まで' + result["sun"]),
            Text('水星まで' + result['mercury']),
            Text('金星まで' + result['venus']),
            Text('火星まで' + result['mars']),
            Text('木星まで' + result['jupiter']),
            Text('土星まで' + result['saturn']),
            Text('海王星まで' + result['uranus']),
            Text('天の川銀河の中心ブラックホールまで' + result['itezaAstar']),
          ],
        ) ,
      ),
    );
  }
}