import 'dart:io';
import 'dart:typed_data';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

/*
  あらかじめデータの入ったDBをassetsフォルダに入れて使う場合
  ・テーブル名・フィールド名
    SQLite側：lowercase_with_underscoreを
      テーブルはUpperCamelCase／フィールドはlowerCamelCaseにする
   ・パスはコンストラクタ引数として渡さないといけないのでmain関数でpath_provider
    を使った非同期処理をやって取得したパスを渡す
 */

class Questions extends Table {
  IntColumn get id => integer()();
  TextColumn get question => text()();
  TextColumn get answer => text()();
  TextColumn get choice1 => text()();
  TextColumn get choice2 => text()();
  TextColumn get choice3 => text()();
  TextColumn get explanation => text()();
  BoolColumn get isCorrect => boolean().withDefault(Constant(false))();
}

class Records extends Table {
  IntColumn get id => integer()();
  TextColumn get date => text()();
  IntColumn get numberOfQuestion => integer()();
  IntColumn get numberOfCorrect => integer()();
  IntColumn get correctRate => integer()();
}

LazyDatabase _openConnection(String dbPath) {
  return LazyDatabase(() async {
    final file = File(dbPath);
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Questions, Records])
class MyDatabase extends _$MyDatabase{
  final String dbPath;
  MyDatabase({required this.dbPath}): super(_openConnection(dbPath));


  @override
  int get schemaVersion => 1;

  Future<List<Question>> get allQuestions => select(questions).get();

  Future insertRecord(Record record) => into(records).insert(record);

  Future<List<Record>> get allRecords => select(records).get();

}

