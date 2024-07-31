import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("두번째 페이지"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: Text("여기는 두번째 페이지입니다."),
          ),
        )
    );
  }
}

