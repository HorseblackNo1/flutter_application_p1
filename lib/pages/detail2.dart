import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_application_p1/pages/detail2_sub.dart';


class Detail2 extends StatelessWidget {
  const Detail2({super.key});

  @override
  Widget build(BuildContext context) {
    //接受参数
    // var receivedArgument = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail2'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  ElevatedButton(
                    onPressed: ()=>{
                      Navigator.pop(context)
                    },
                    child:const Text('back')
                  ),
                  ElevatedButton(
                    onPressed: ()=>{
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => Detail2_sub())
                       )
                    },
                    child:const Text('next')
                  ),
              ],
            )
            
        )
        );
  }
}
