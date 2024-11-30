import 'package:bloc_test/bloc/get/cubit/get_contact_cubit.dart';
import 'package:bloc_test/data/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetContactCubit>(context).getContacts();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Home"),
      ),
      body: BlocBuilder<GetContactCubit, GetContactState>(
        builder: (context, state) {
          if (state is GetContactSuccess) {
            List<Contact> contacts = state.contacts;
            return ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, position) {
                  return item(contacts[position]);
                });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget item(Contact contact) {
    return Card(
      child: ListTile(
        title: Text(contact.name),
        subtitle: Text(contact.job),
        leading: Text(contact.age),
      ),
    );
  }
}
