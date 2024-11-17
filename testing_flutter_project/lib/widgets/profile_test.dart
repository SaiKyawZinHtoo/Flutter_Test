import 'dart:ffi';

import 'package:flutter/material.dart';

class ProfileTest extends StatelessWidget {
  const ProfileTest({super.key});

  @override
  Widget build(BuildContext context) {
    const  color = Color(0xff7278ea);
    const avatar_image = "https://avatar.iran.liara.run/public/40";
    return Scaffold(
      appBar: AppBar(
        backgroundColor:color ,
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),),
        title: const Text("Profile"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined),),],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
                ),
              ),
              Positioned(
                bottom: -40,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        image: const DecorationImage(image: const NetworkImage(avatar_image),),
                      ),
                    ),
                    Positioned(
                      bottom: -3,
                      right: 1,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: color,
                        ),
                        child: const Icon(Icons.edit,
                        size: 18,
                        color: Colors.white,)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 45,),
          const Text("Sai Kyaw Zin Htoo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          const Text("Hi!, My Postion is Mobile Developer.", style: TextStyle(fontSize: 12, color: Colors.grey),),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ItemCard( icons: Icon(Icons.video_camera_back,color: color,), text: "23.4",),
              )),
              Expanded(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ItemCard( icons: Icon(Icons.filter_drama,color: color,), text: "23.4",),
              )),
              Expanded(child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ItemCard( icons: Icon(Icons.star,color: color,), text: "23.4",),
              )),
            ],
          )
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.icons,
    required this.text
  });

  final Icon icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            icons,
            const SizedBox(height: 10,),
            Text(text),
          ],
        ),
      ),
    );
  }
}