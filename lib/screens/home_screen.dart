import 'dart:math';

import 'package:db_assets_folder_sample/db/database.dart';
import 'package:db_assets_folder_sample/main.dart';
import 'package:flutter/material.dart';

/*
* TODO ここはデータベースの中身を表示するサンプルプログラムなので、課題アプリの内容に要修正
* */

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [];

  @override
  void initState() {
    getAllQuiz();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => insertRecord(),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, int position) => ListTile(
            title: Text(questions[position].id.toString()),
            subtitle: Text(questions[position].toString()),
          ),
        ),
      ),
    );
  }

  void getAllQuiz() async {
    questions = await database.allQuestions;
    setState(() {});
  }

  insertRecord() async{
    final id = Random().nextInt(1000);
    var record = Record(
      id: id,
      date: "20200202",
      numberOfQuestion: 20,
      numberOfCorrect: 10,
      correctRate: 50
    );
    await database.insertRecord(record);
    var records = await database.allRecords;
    print("Records: ${records.toString()}");
  }
}
