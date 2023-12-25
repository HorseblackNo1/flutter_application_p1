import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final TextStyle _style =
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  final String _txt = '我是一个变量';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //  Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('RichText')),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RichText(
                  text: const TextSpan(
                text: 'asdfasdfasdf',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  TextSpan(
                    text: '!',
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
