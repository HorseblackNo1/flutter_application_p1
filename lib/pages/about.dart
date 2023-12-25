import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_application_p1/pages/http_get.dart';
import 'package:flutter_application_p1/pages/http_post.dart';


class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Title Widget'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Card(
                child: ListTile(
              title: const Text('degugger HTTP_get'),
              subtitle: const Text(
                  'https://mock.presstime.cn/mock/6461a6345bbac3001ab95cff/example_copy_copy/flutter/getList'),
              onTap: () {
                log("HTTP_get");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HttpGet() )
                );
              },
            )),
            Card(
                child: ListTile(
              title: const Text('degugger HTTP_post'),
              subtitle: const Text(
                  'https://mock.presstime.cn/mock/6461a6345bbac3001ab95cff/example_copy_copy/flutter/getList'),
              onTap: () {
                log("HTTP_post");
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => HttpPost() )
                );
               
              },
            )),
          ],
        ));
  }
}
