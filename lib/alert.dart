import 'package:flutter/material.dart';
import 'alert.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("alert 입니다"),
    ),
    body: Container(
      child: Center(
        child: TextButton(
          child: const Text("팝업 버튼"),
          onPressed: () {
            showDialog(
              context: context,
              builder:  (BuildContext con){
                return AlertDialog(
                  title: const Text("Dialog Title"),
                  content: Container(
                    child: const Text("내용입니다."),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                child: const Text("close")
                     )
                   ],
                 );
               }
             );
           },
          )
        )
      )
    );
  }
}