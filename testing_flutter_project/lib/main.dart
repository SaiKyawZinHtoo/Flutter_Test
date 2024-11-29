import 'package:flutter/material.dart';
import 'package:testing_flutter_project/inherited_widget/inherited_widget.dart';
import 'package:testing_flutter_project/login_and_signUp/signIn.dart';
import 'package:testing_flutter_project/movie_UI/pages/movie_UI_page.dart';
import 'package:testing_flutter_project/navigation/screen_a.dart';
import 'package:testing_flutter_project/navigation/screen_b.dart';
import 'package:testing_flutter_project/navigation/screen_c.dart';
import 'package:testing_flutter_project/note_app/note_list_screen.dart';
import 'package:testing_flutter_project/note_app/pages/model/note.dart';
import 'package:testing_flutter_project/note_app/pages/splash_screen.dart';
import 'package:testing_flutter_project/note_app/provider/theme_provider.dart';
import 'package:testing_flutter_project/note_app/service/note_service.dart';
import 'package:testing_flutter_project/note_app/theme/note_theme.dart';
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
import 'package:testing_flutter_project/widgets/date_picker.dart';
import 'package:testing_flutter_project/widgets/date_range_picker.dart';
import 'package:testing_flutter_project/widgets/dialog.dart';
import 'package:testing_flutter_project/widgets/divider.dart';
import 'package:testing_flutter_project/widgets/drawer.dart';
import 'package:testing_flutter_project/widgets/expanded&Flexible.dart';
import 'package:testing_flutter_project/widgets/floatingButton.dart';
import 'package:testing_flutter_project/widgets/future_builder.dart';
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
import 'package:testing_flutter_project/widgets/pageView.dart';
import 'package:testing_flutter_project/widgets/popupMenu.dart';
import 'package:testing_flutter_project/widgets/profile_test.dart';
import 'package:testing_flutter_project/widgets/radio.dart';
import 'package:testing_flutter_project/widgets/row.dart';
import 'package:testing_flutter_project/widgets/singleChildSchoolView.dart';
import 'package:testing_flutter_project/widgets/slide.dart';
import 'package:testing_flutter_project/widgets/snackBar.dart';
import 'package:testing_flutter_project/widgets/stack.dart';
import 'package:testing_flutter_project/widgets/statefulwidget.dart';
import 'package:testing_flutter_project/widgets/stram_builder.dart';
import 'package:testing_flutter_project/widgets/switch.dart';
import 'package:testing_flutter_project/widgets/tabBar.dart';
import 'package:testing_flutter_project/widgets/textField.dart';
import 'package:testing_flutter_project/widgets/textFromField.dart';
import 'package:testing_flutter_project/widgets/time_picker.dart';
import 'package:testing_flutter_project/widgets/wrap.dart';

void main() {
  runApp(const MyApp());
}

final List<Note> allNote = [];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  @override
  void initState() {
    super.initState();
    loadTheme();
  }

  void loadTheme() async {
    final themeMode = await ThemeService.getThemeMode();
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeMode: _themeMode,
      changeTheme: () async {
        setState(() {
          if (_themeMode == ThemeMode.light) {
            _themeMode = ThemeMode.dark;
          } else {
            _themeMode = ThemeMode.light;
          }
        });
        await ThemeService.setThemeMode(_themeMode);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Note App",
        home: const NoteSplashScreen(),
        theme: NoteTheme.lightTheme(),
        darkTheme: NoteTheme.darkTheme(),
        themeMode: _themeMode,
      ),
    );
  }
}
