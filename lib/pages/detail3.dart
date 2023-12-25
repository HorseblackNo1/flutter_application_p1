import 'package:flutter/material.dart';

class Detail3 extends StatelessWidget{
  const  Detail3({super.key});

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text('Detail3 Title'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        child:const Center(
          child: Text("Detail3 context"),
        ),
      )
    );
  }
}