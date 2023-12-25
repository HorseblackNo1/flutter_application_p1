import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
 const  ContainerWidget({super.key});
  final TextStyle _style =
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  final String _txt = '我是一个变量';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //  Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Container')),
        body: Container(
          child: const Center(
            child: Text('Container')
          ),
        )
      );
  }
}
