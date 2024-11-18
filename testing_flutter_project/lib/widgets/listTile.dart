import 'package:flutter/material.dart';

class ListtileWidget extends StatelessWidget {
  const ListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTitleWidget(
          text1: "ShanLay",
          text2: "09123456",
        ),
      ),
    );
  }
}

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.account_circle,
        size: 50,
        color: Colors.green,
      ),
      title: Text(
        text1,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      subtitle: Text(
        text2,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      trailing: Icon(Icons.phone, size: 50, color: Colors.grey.shade400),
      isThreeLine: false,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.black,
          width: 2,
        ),
      ),
      onTap: () {
        print("clicked");
      },
    );
  }
}
