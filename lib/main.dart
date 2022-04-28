import 'dart:io';

import 'package:db_assets_folder_sample/db/database.dart';
import 'package:db_assets_folder_sample/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

/*
*   TODO main.dartはこのまま編集せずに使ってOK
* */
late MyDatabase database;

void main() async{
  /*
  * E/flutter ( 1466): [ERROR:flutter/lib/ui/ui_dart_state.cc(157)] Unhandled Exception: ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized.
    E/flutter ( 1466): If you're running an application and need to access the binary messenger before `runApp()` has been called (for example, during plugin initialization), then you need to explicitly call the `WidgetsFlutterBinding.ensureInitialized()` first.
  * */
  WidgetsFlutterBinding.ensureInitialized();
  //パスの取得はmain関数のところでやらないとアプリ起動にDBの初期化が間に合わない
  var dbPath = await getDbPath();
  database = MyDatabase(dbPath: dbPath);

  runApp(MyApp());
}


Future<String> getDbPath() async{
  var dbDir = await getApplicationDocumentsDirectory();
  var dbPath = join(dbDir.path, "quiz.db");

  if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
    ByteData byteData = await rootBundle.load("assets/data/quiz.db");
    List<int> bytes = byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
  }
  return dbPath;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DB",
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}
