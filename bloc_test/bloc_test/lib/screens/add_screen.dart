import 'package:bloc_test/bloc/get/post/cubit/post_contact_cubit.dart';
import 'package:bloc_test/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostContactCubit>(
      create: (context) => PostContactCubit(getIt.call()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Contact"),
        ),
        body: BlocBuilder<PostContactCubit, PostContactState>(
            builder: (context, state) {
          return ContactForm();
        }),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Name",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Name";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Name",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Name";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Name",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Name";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
