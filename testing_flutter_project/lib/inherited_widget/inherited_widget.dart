import 'package:flutter/material.dart';

class TestInherited extends StatefulWidget {
  const TestInherited({super.key});

  @override
  State<TestInherited> createState() => _TestInheritedState();
}

class _TestInheritedState extends State<TestInherited> {
  int number = 0;

  void increase() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NumberProvider(
      number: number,
      onPressed: increase,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Inherited Widget Example"),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: ShoppingCard(),
            ),
          ],
        ),
        body: const BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NoNeedNumberWidget(),
          SizedBox(height: 20),
          NeedNumberWidget(),
        ],
      ),
    );
  }
}

class NoNeedNumberWidget extends StatelessWidget {
  const NoNeedNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
      color: Colors.amber,
      child: const Text(
        "No Need Number Widget",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class NeedNumberWidget extends StatefulWidget {
  const NeedNumberWidget({super.key});

  @override
  State<NeedNumberWidget> createState() => _NeedNumberWidgetState();
}

class _NeedNumberWidgetState extends State<NeedNumberWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("didChangeDependencies triggered");
  }

  @override
  Widget build(BuildContext context) {
    final provider = NumberProvider.of(context);

    return Column(
      children: [
        Text(
          "Number: ${provider?.number ?? 0}",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: provider?.onPressed,
          child: const Text("Increase Number"),
        ),
      ],
    );
  }
}

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final number = NumberProvider.of(context)?.number ?? 0;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.shopping_cart, size: 30),
        if (number > 0)
          Positioned(
            top: -5,
            right: -5,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                number.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class NumberProvider extends InheritedWidget {
  const NumberProvider({
    super.key,
    required this.number,
    required this.onPressed,
    required Widget child,
  }) : super(child: child);

  final int number;
  final VoidCallback onPressed;

  static NumberProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberProvider>();
  }

  @override
  bool updateShouldNotify(covariant NumberProvider oldWidget) {
    return number != oldWidget.number;
  }
}
