import 'package:flutter/material.dart';
import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('底部按鈕&多個頁面配置'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(//底部按鈕
        iconSize: 30,
        fixedColor: Colors.deepOrange,//選中的Button顏色
        type: BottomNavigationBarType.fixed, //如果按鈕超過三個需設置這個
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
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("列"),
          ),
        ],
      ),
    );
  }
}