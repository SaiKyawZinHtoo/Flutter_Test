import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            //ဒီအပိုင်းမှာကြတော့ container အထဲမှာရှိသမျှကို ကွေးလိုက်တာ
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage('images/testing.jpg'),
            // ),
          ),
          height: 300,
          width: 300,
          //အဲ့အပိုင်းမှာကြတော့ ပုံကြီးကိုပဲသီးသန့်ကွေးလိုက်တာ
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              "images/testing.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
