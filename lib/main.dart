import 'package:calc_time_to_planet/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  double valueText = 0;
  Map<String,dynamic> result = {};

  /**
	* 入力値を時速に変換して計算
  * @param null
  * @return Map result
	*/
 void calcTime() {
  print(valueText);
  // 速さを時速KMに変換
  double speed = (((50 / valueText) * 60) * 60) / 1000;

  print('速度計算結果' + speed.toString());

  //　太陽
  const sun = 150000000;
  
  result['sun'] = convDate(sun / speed);

  //　水星
  const mercury = 230000000;
  result['mercury'] = convDate(mercury / speed);

  //　金星
  const venus = 150000000;
  result['venus'] = convDate(venus / speed);

  //　火星
  const mars = 150000000;
  result['mars'] = convDate(mars / speed);

  //　木星
  const jupiter = 750000000;
  result['jupiter'] = convDate(jupiter / speed);

  //　土星
  const saturn = 1500000000;
  result['saturn'] = convDate(saturn / speed);

  //　天王星
  const uranus = 2900000000;
  result['uranus'] = convDate(uranus / speed);

  // 天の川銀河中心のブラックホールいて座A＊
  const itezaAstar = 9500000000000 * 25640;
  result['itezaAstar'] = convDate(itezaAstar / speed);


  print("結果配列の表示" + result.toString());
  
  setState(() {});
 }

  /**
	* 時間を日数に変換する
  * @param double time
  * @return 
	*/
  String convDate(double time) {
    // 年数を計算する
    double year = time / 8760;
    print("convDate:年数" + year.toString());

    // 月数を計算する
    double month = (time % 8760) / 730;
    print("convDate:月数" + month.toString());

    // 日数を計算する
    double day = ((time % 8760 ) % 730) / 24;
    print("convDate:日数" + day.toString());

    return year.floor().toString() + "年" + month.floor().toString() + "カ月" + day.floor().toString() + "日";
  }

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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  // FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) {
                  valueText = double.parse(value);
                },
                decoration: InputDecoration(
                  hintText: 'あなたの50Mのタイムを入力してください。'
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  calcTime();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(result),)
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

