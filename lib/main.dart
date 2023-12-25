import 'package:flutter/material.dart';
import 'package:flutter_application_p1/pages/tabs.dart';



void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Tabs(),
      
    );
  }
}


