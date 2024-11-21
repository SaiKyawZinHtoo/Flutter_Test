import 'package:flutter/material.dart';
import 'package:testing_flutter_project/navigation/screen_a.dart';
import 'package:testing_flutter_project/navigation/screen_b.dart';
import 'package:testing_flutter_project/navigation/screen_c.dart';
import 'package:testing_flutter_project/widgets/appBar.dart';
import 'package:testing_flutter_project/widgets/bodyContainer.dart';
import 'package:testing_flutter_project/widgets/bottomSheet.dart';
import 'package:testing_flutter_project/widgets/bottom_nav.dart';
import 'package:testing_flutter_project/widgets/buildContext.dart';
import 'package:testing_flutter_project/widgets/button.dart';
import 'package:testing_flutter_project/widgets/card.dart';
import 'package:testing_flutter_project/widgets/checkedBox.dart';
import 'package:testing_flutter_project/widgets/circularProgressIndicator.dart';
import 'package:testing_flutter_project/widgets/column.dart';
import 'package:testing_flutter_project/widgets/dialog.dart';
import 'package:testing_flutter_project/widgets/divider.dart';
import 'package:testing_flutter_project/widgets/drawer.dart';
import 'package:testing_flutter_project/widgets/expanded&Flexible.dart';
import 'package:testing_flutter_project/widgets/floatingButton.dart';
import 'package:testing_flutter_project/widgets/gestureDector.dart';
import 'package:testing_flutter_project/widgets/gridTile.dart';
import 'package:testing_flutter_project/widgets/gridTileBar.dart';
import 'package:testing_flutter_project/widgets/gridView.dart';
import 'package:testing_flutter_project/widgets/imageTesting.dart';
import 'package:testing_flutter_project/widgets/indexedStack.dart';
import 'package:testing_flutter_project/widgets/linearProgressIndicator.dart';
import 'package:testing_flutter_project/widgets/listTile.dart';
import 'package:testing_flutter_project/widgets/listView.dart';
import 'package:testing_flutter_project/widgets/listViewBuilder.dart';
import 'package:testing_flutter_project/widgets/navigationBar.dart';
import 'package:testing_flutter_project/widgets/navigationRail.dart';
import 'package:testing_flutter_project/widgets/popupMenu.dart';
import 'package:testing_flutter_project/widgets/profile_test.dart';
import 'package:testing_flutter_project/widgets/radio.dart';
import 'package:testing_flutter_project/widgets/row.dart';
import 'package:testing_flutter_project/widgets/singleChildSchoolView.dart';
import 'package:testing_flutter_project/widgets/slide.dart';
import 'package:testing_flutter_project/widgets/snackBar.dart';
import 'package:testing_flutter_project/widgets/stack.dart';
import 'package:testing_flutter_project/widgets/statefulwidget.dart';
import 'package:testing_flutter_project/widgets/switch.dart';
import 'package:testing_flutter_project/widgets/textField.dart';
import 'package:testing_flutter_project/widgets/textFromField.dart';
import 'package:testing_flutter_project/widgets/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: Scaffold(
        appBar: appBarWidget(),
        body: TestSnackBar(),
        // bottomNavigationBar: IndexedStackWidget(),
      ),
    );
  }
}
