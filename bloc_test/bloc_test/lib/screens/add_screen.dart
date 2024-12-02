import 'package:bloc_test/bloc/get/post/cubit/post_contact_cubit.dart';
import 'package:bloc_test/data/model/contact.dart';
import 'package:bloc_test/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

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
          if (state is PostContactLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostContactSuccess) {
            return Column(
              children: [
                Text("Success"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, "error");
                    },
                    child: Text("Go Back"))
              ],
            );
          } else if (state is PostContactFail) {
            return Center(child: Text(state.error));
          }
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
  late String _name, _age, _job;
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
            onSaved: (value) {
              this._name = value!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Age",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Age";
              }
              return null;
            },
            onSaved: (value) {
              this._age = (int.tryParse(value!) ?? 0) as String;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Job",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Job";
              }
              return null;
            },
            onSaved: (value) {
              this._job = value!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Contact contact = Contact("", _name, _job, _age);
                BlocProvider.of<PostContactCubit>(context).addContact(contact);
              }
            },
            child: Text("Add Contact"),
          ),
        ],
      ),
    );
  }
}
