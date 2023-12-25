import 'package:flutter/material.dart';
import 'package:flutter_application_p1/util/api.dart';
import 'package:flutter_application_p1/util/json.dart';

class HttpPost extends StatefulWidget {
  HttpPost({super.key});
  var respString ='...';

  @override
  State<HttpPost> createState() => _HttpGet();
}

class _HttpGet extends State<HttpPost> {
  void getTestPost() async {
    var resp = await testPost(
      'https://mock.presstime.cn/mock/6461a6345bbac3001ab95cff/example_copy_copy/flutter/post',
      {"test1":1322332}
      );

    setState((){
      widget.respString = prettyJson(resp);
    });
  }
  @override
  void initState() {
    super.initState();
    getTestPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HttpPost Title'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          padding:const EdgeInsets.all(10),
          child: Text(widget.respString,style:TextStyle(fontSize:10)),
        ));
  }
}
