import 'package:flutter/material.dart';
import 'package:testing_flutter_project/movie_UI/components.dart';
import 'package:testing_flutter_project/movie_UI/model/data.dart';

class SuggestionsWidget extends StatefulWidget {
  const SuggestionsWidget({super.key});

  @override
  State<SuggestionsWidget> createState() => _SuggestionsWidgetState();
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  late final PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.75, // Makes cards look spaced and neat
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
            title: "May Be You Like",
          ),
          const SizedBox(height: 10), // Adds spacing below the title
          SizedBox(
            height: 140, // Maintains the desired height
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: _pageController,
              itemCount: suggestion.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: AspectRatio(
                      aspectRatio:
                          16 / 9, // Adjust aspect ratio for better scaling
                      child: Image.asset(
                        suggestion[index].imageUrl,
                        fit: BoxFit
                            .cover, // Ensures the image fills while cropping excess
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10), // Spacing below the image slider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              suggestion.length,
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
