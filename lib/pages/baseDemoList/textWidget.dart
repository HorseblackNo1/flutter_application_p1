import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const  TextWidget({super.key});
  final TextStyle _style = const TextStyle(
    fontSize:16.0,
    fontWeight: FontWeight.bold
  );

  final String _txt = '我是一个变量';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //  Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Text')),
        body: SingleChildScrollView(
          padding:const  EdgeInsets.all(20),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             const Text('TextAlign.left'),
             const Text('TextAlign.right'),
             const Text('TextAlign.center'),
             const Text('TextAlign.justify'),
             const Text('TextAlign.start'),
             const Text('TextAlign.end'),
             const SizedBox(height: 40),

              Text(
                'TextAlign.left',
                style: _style,
              ),
              Text(
                'Dart $_txt: 是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。',
                textAlign: TextAlign.left,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
             const SizedBox(height: 20),
              Text(
                'TextAlign.right',
                style: _style,
              ),
             const Text(
                'Dart 是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。TextAlign.left',
                textAlign: TextAlign.right,
              ),
             const SizedBox(height: 20),
              Text(
                'TextAlign.center',
                style: _style,
              ),
             const Text(
                'Dart 是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。TextAlign.left',
                textAlign: TextAlign.center,
              ),
             const SizedBox(height: 20),
              Text(
                'TextAlign.justify',
                style: _style,
              ),
            const  Text(
                'Dart 是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。TextAlign.left',
                textAlign: TextAlign.justify,
              ),
             const SizedBox(height: 20),
              Text(
                'TextAlign.start',
                style: _style,
              ),
             const Text(
                'Dart 是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。TextAlign.left',
                textAlign: TextAlign.start,
              ),
             const SizedBox(height: 20),
              Text(
                'TextAlign.end',
                style: _style,
              ),
            const  Text(
                'Dart 是一种针对客户端优化的语言，可在任何平台上开发快速的应用程序。TextAlign.left',
                textAlign: TextAlign.end,
              ),
               const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
