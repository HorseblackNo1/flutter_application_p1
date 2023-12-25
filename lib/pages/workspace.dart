import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_application_p1/pages/detail1.dart';
import 'package:flutter_application_p1/pages/detail2.dart';
import 'package:flutter_application_p1/pages/detail3.dart';
import 'package:flutter_application_p1/pages/baseDemoList/baseDemoList.dart';


class WorkSpace extends StatefulWidget {
  const WorkSpace({super.key});

  @override
  State<WorkSpace> createState() => _WorkSpace();
}

class _WorkSpace extends State<WorkSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WackSpace Title Widget'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Card(
                  child: ListTile(
                title: const Text('Detail1'),
                trailing: const Icon(Icons.more_vert),
                onTap: () {
                  Navigator.push(
                    context,
                    //传递参数
                    MaterialPageRoute(
                        builder: (context) => const Detail1(),
                        settings:const RouteSettings(
                          arguments:"Detail1 argument from prev widget",
                        )
                  ),
                  );
                },
              )),
              Card(
                  child: ListTile(
                title: const Text('Detail2'),
                trailing: const Icon(Icons.more_vert),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detail2()
                    )
                  );
                },
              )),
              Card(
                  child: ListTile(
                title: const Text('Detail3'),
                trailing: const Icon(Icons.more_vert),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) { 
                     return const Detail3();
                    })
                  );
                },
              )),
              Card(
                  child: ListTile(
                title: const Text('baseDemoList'),
                trailing: const Icon(Icons.more_vert),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) { 
                     return  Scaffold(
                      appBar: AppBar(
                        title:const Text('baseDemoList'),
                        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      body:BaseDemoList()
                     );
                    })
                  );
                },
              )),
            ],
          )),
    );
  }
}
