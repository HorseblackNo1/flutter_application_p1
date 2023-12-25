import 'package:flutter/material.dart';
import 'package:flutter_application_p1/pages/baseDemoList/textWidget.dart';
import 'package:flutter_application_p1/pages/baseDemoList/richTextWidget.dart';
import 'package:flutter_application_p1/pages/baseDemoList/container.dart';



class BaseDemoList extends StatelessWidget {

  const BaseDemoList({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(20, (index) {
        if (index == 0) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$index: Text'),
              ElevatedButton(
                  onPressed: () {
                    print('$index');

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => TextWidget()));
                  },
                  child: const Text('click Text'))
            ],
          ));
        }else if(index == 1){
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$index: RichText'),
              ElevatedButton(
                  onPressed: () {
                    print('$index');

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => RichTextWidget()));
                  },
                  child: const Text('click Text'))
            ],
          ));
        } else if(index == 2){
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$index: container'),
              ElevatedButton(
                  onPressed: () {
                    print('$index');

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ContainerWidget()));
                  },
                  child: const Text('click Text'))
            ],
          ));
        } 
        else {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('index $index'),
              ElevatedButton(
                  onPressed: () {
                    print('$index');
                  },
                  child: const Text('click '))
            ],
          ));
        }

        // return Center(
        //   child:Text(
        //     '$index: textWdiget',
        //     style:TextStyle(color:Theme.of(context).colorScheme.inversePrimary),
        //   ),
      }),
    );
  }
}
