import 'package:flutter/material.dart';

class MyStatelessWidgetApp extends StatelessWidget {
  var switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Around Hub Studio, Flutter',
      home: Scaffold(
        body: Center(
          child: Switch(
              value: switchValue,
              onChanged: (value) {
                switchValue = value;
                // setState 메소드 사용 불가
              }),
        ),
      ),
    );
  }
}
