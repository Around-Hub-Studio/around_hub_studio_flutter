import 'package:flutter/material.dart';

class MyStatefulWidgetApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }
}

class _MyState extends State<MyStatefulWidgetApp> {
  var switchValue = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies 호출");
    print(super.mounted);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
              Visibility(
                visible: switchValue,
                child: const Text(
                  "까꿍",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
