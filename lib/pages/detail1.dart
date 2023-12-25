import 'package:flutter/material.dart';

class Detail1 extends StatelessWidget{
  const  Detail1({super.key});

  
  @override
  Widget build(BuildContext context){
    //接受参数
    var receivedArgument = ModalRoute.of(context)!.settings.arguments; 
    return Scaffold(
      appBar:AppBar(
        title:const Text('Detail1'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        child: Center(
          child: Text("$receivedArgument"),
        ),
      )
    );
  }
}