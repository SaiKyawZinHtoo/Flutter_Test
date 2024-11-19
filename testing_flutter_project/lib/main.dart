import 'package:flutter/material.dart';
import 'package:testing_flutter_project/navigation/screen_a.dart';
import 'package:testing_flutter_project/widgets/appBar.dart';
import 'package:testing_flutter_project/widgets/bodyContainer.dart';
import 'package:testing_flutter_project/widgets/button.dart';
import 'package:testing_flutter_project/widgets/card.dart';
import 'package:testing_flutter_project/widgets/column.dart';
import 'package:testing_flutter_project/widgets/divider.dart';
import 'package:testing_flutter_project/widgets/expanded&Flexible.dart';
import 'package:testing_flutter_project/widgets/gestureDector.dart';
import 'package:testing_flutter_project/widgets/gridTile.dart';
import 'package:testing_flutter_project/widgets/gridTileBar.dart';
import 'package:testing_flutter_project/widgets/gridView.dart';
import 'package:testing_flutter_project/widgets/imageTesting.dart';
import 'package:testing_flutter_project/widgets/listTile.dart';
import 'package:testing_flutter_project/widgets/listView.dart';
import 'package:testing_flutter_project/widgets/listViewBuilder.dart';
import 'package:testing_flutter_project/widgets/profile_test.dart';
import 'package:testing_flutter_project/widgets/row.dart';
import 'package:testing_flutter_project/widgets/singleChildSchoolView.dart';
import 'package:testing_flutter_project/widgets/stack.dart';
import 'package:testing_flutter_project/widgets/statefulwidget.dart';
import 'package:testing_flutter_project/widgets/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBarWidget(),
        body: ScreenA(),
      ),
    );
  }
}
