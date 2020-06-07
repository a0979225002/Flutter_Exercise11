import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('底部按鈕&多個頁面配置'),
      ),
      body: Text("底部按鈕${this._currentIndex}"),
      bottomNavigationBar: BottomNavigationBar(//底部按鈕
        currentIndex: this._currentIndex,//一開始給予哪個按鈕的頁面位置
        onTap: (int index){//回傳 監聽點擊哪個按鈕
         setState(() {
           this._currentIndex = index;
         });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分類"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設置"),
          ),
        ],
      ),
    );
  }
}
