import 'dart:io';

import 'package:flutter/material.dart';
import 'package:todo_app/util/dbhelper.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/écrans/todolist.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return new MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Mes Trucs à faire',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Choses à faire'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: TodoList(),
    );
  }
}