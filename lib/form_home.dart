import 'package:flutter/material.dart';


class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {

  final _key = GlobalKey<FormState>();
  late String _username, _email;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("from page"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _key,
          child: Column(
            children: [
              usernameInput(),
              const SizedBox(height: 15),
              emailInput(),
              const SizedBox(height: 20),
              submitButton()
            ],
          ),
        ),
      ),
    );
  }


  Widget usernameInput() {
    return TextFormField(
      autofocus: true,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'The input is empty';
        } else {
          return null;
        }
      },
      onSaved: (username) => _username = username ?? '',
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: '유저네임을 입력하세요',
        labelText: 'username',
      ),
    );
  }

  Widget emailInput() {
    return TextFormField(
      autofocus: true,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'The input is empty';
        } else {
          return null;
        }
      },
      onSaved: (email) => _email = email ?? '',
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: '이메일을 입력하세요',
        labelText: 'email',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
        onPressed: () {
          print('버튼이 눌렸습니다');

          if (_key.currentState!.validate()) {
            _key.currentState!.save();
            Navigator.pushNamed(
                context,
                '/success',
                arguments: {'username': _username, 'email': _email}
            );
          }
        },
        child: Container(
          child: Text("Submit"),
        )
    );
  }
}
