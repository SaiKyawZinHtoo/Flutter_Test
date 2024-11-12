import 'package:flutter/material.dart';

class ButtonTesting extends StatelessWidget {
  const ButtonTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("Button Clicked");
          },
          style: ButtonStyle(
            ///အခုကိုငါ့လုပ်ထားတဲ့အပိုင်းကြတော့ button အပိုင်းကိုလုပ်ထားတဲ့အရောင်
            backgroundColor: MaterialStateProperty.all(Colors.deepPurple),

            ///အခုက်ုလုပ်ထားတဲ့အပိုင်းကြတော့ text ကိုအရောင်ပြောင်းပြီးတော့ လုပ်ပေးထားတာ
            foregroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(10),
          ),
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
