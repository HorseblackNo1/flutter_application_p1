

import 'package:flutter/material.dart';

class Detail2_sub extends StatelessWidget{

  Detail2_sub({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
     
      appBar: AppBar(
         title:const Text("detail2_sub title"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(
              onPressed: () => {
                Navigator.pop(context)
              }, 
            child:const Text('返回') 
            ),

            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).popUntil((route) => route.isFirst)
              }, 
            child:const Text('返回首页') 
            ),
          ],
        ),
      )
    );
  }

}