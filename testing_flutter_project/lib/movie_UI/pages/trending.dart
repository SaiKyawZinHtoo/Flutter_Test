import 'package:flutter/material.dart';
import 'package:testing_flutter_project/movie_UI/components.dart';
import 'package:testing_flutter_project/movie_UI/model/data.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({super.key});

  @override
  State<TrendingWidget> createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  late final PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.75,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final blackColor = const Color(0xff202124);
    return Scaffold(
      backgroundColor: blackColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TitleWidget(
            title: "Trending",
          ),
          SizedBox(
            height: 400,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(
                  () {
                    currentIndex = value;
                  },
                );
              },
              controller: _pageController,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(trending[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              itemCount: trending.length,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              trending.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor:
                      index == currentIndex ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
