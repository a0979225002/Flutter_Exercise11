import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部按鈕&多個頁面配置',
      home:Tabs(),
    );
  }
}


