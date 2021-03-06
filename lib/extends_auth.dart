import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedDemoScreen extends StatelessWidget {
  const ExpandedDemoScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text('Really really really really really really really really really really long text',
                style: TextStyle(fontSize: 24),
      )),

              ],
            ),
            Row(
              children:[
              Expanded(
                flex:2,
    child: Container(
                height: 100,
                color: Colors.red,
              ),),
    Expanded(
      flex:2,
      child: Container(
    height: 100,
    color: Colors.green,
    ),),
    Expanded(
      flex:1,
      child: Container(
    height: 100,
    color: Colors.blue,
    ),)
    ]
            ),
            Row(
              children: [
                Icon(Icons.add_box_outlined),
                Expanded (
                  flex:3,
                  child: TextField(),),
                Expanded(child: ElevatedButton(onPressed: () {}, child: Text('Come in'))),
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}