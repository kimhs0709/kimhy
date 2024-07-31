import 'package:flutter/material.dart';
import 'second_view.dart';

class navigator_bar extends StatefulWidget {
  const navigator_bar({super.key});

  @override
  State<navigator_bar> createState() => navigator_barState();
}

class navigator_barState extends State<navigator_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("네비게이터 화면"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => navigator_bar.push(context, MaterialPageRoute(
                builder: (_) => navigator_bar())
            ),
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.blue,
              child: Text("Get Started"),
            ),
          ),
        )


      //출처: https://juntcom.tistory.com/274 [쏘니의 개발블로그:티스토리]
    );
  }
}


