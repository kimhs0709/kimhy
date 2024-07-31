import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("버튼페이지"),
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow
                  ),
                  onPressed: () => print("ElevatedButton"),
                  child: const Text("ElevatedButton 버튼"),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () => print("TextButton"),
                  child: const Text("TextButton 버튼"),
                ),
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () => print("OutlinedButton"),
                  child: const Text("OutlinedButton 버튼"),
                ),
              )
            ],
          ),
        )
     );
   }
 }
