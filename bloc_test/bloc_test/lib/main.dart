import 'package:bloc_test/bloc/get/cubit/get_contact_cubit.dart';
import 'package:bloc_test/module.dart';
import 'package:bloc_test/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  locator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<GetContactCubit>(
        create: (context) => getIt.call(),
        child: Home(),
      ),
    );
  }
}
