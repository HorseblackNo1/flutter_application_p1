import 'package:flutter/material.dart';
import 'package:flutter_application_p1/util/api.dart';
import 'package:flutter_application_p1/util/json.dart';
// import 'dart:developer';

class HttpGet extends StatefulWidget{
  HttpGet({super.key,});

  var respString = '...';
 
  @override
  State <HttpGet> createState() => _HttpGet();
}

class _HttpGet extends State<HttpGet>{

  @override
  void initState(){
    super.initState();
    getTestGet();
  }

  void getTestGet ()async{
    final res = await testGet('https://mock.presstime.cn/mock/6461a6345bbac3001ab95cff/example_copy_copy/flutter/getList');
    setState(() {
      // widget.respString = prettyJson(res);
      widget.respString =  prettyJson(res);
    });
  }


  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title:const Text('HttpGet Title'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Container(
        padding: const EdgeInsets.all(10),
        child: Text(widget.respString, style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
