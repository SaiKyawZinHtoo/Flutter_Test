import 'package:flutter/material.dart';
import 'package:testing_flutter_project/movie_UI/components.dart';
import 'package:testing_flutter_project/movie_UI/model/data.dart';
import 'package:testing_flutter_project/movie_UI/model/movie.dart';
import 'package:testing_flutter_project/movie_UI/pages/drawer.dart';
import 'package:testing_flutter_project/movie_UI/pages/new_movie.dart';
import 'package:testing_flutter_project/movie_UI/pages/suggestions_widget.dart';
import 'package:testing_flutter_project/movie_UI/pages/trending.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSearching = false;
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final blackColor = const Color(0xff202124); // Background color
    return Scaffold(
      drawer: const UIDrawer(),
      appBar: AppBar(
        backgroundColor: blackColor, // Black AppBar
        foregroundColor: Colors.white,
        title: _isSearching
            ? TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white54),
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value; // Update the search query
                  });
                },
              )
            : const Text(
                "Pocket TV", // Default title
              ),
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(
                () {
                  if (_isSearching) {
                    _isSearching = false;
                    _searchQuery = '';
                  } else {
                    _isSearching = true;
                  }
                },
              );
            }, // Search functionality
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // Allow scrolling if needed
          child: Column(
            children: [
              // TrendingWidget wrapped inside an Expanded
              Container(
                color: blackColor, // Set the background color
                child: const SizedBox(
                  height: 500, // Ensure proper height constraint
                  child: TrendingWidget(),
                ),
              ),
              Container(
                color: blackColor, // Set the background color
                child: SizedBox(
                  height: 330, // Set appropriate height
                  child: NewMovieWidget(
                    title: "New Movies",
                    movies: _filterMovies(movies),
                  ),
                ),
              ),
              Container(
                color: blackColor, // Set the background color
                child: const SizedBox(
                  height: 300, // Ensure proper height constraint
                  child: SuggestionsWidget(),
                ),
              ),
              Container(
                color: blackColor, // Set the background color
                child: SizedBox(
                  height: 330, // Set appropriate height
                  child: NewMovieWidget(
                    title: "TV Shows",
                    movies: _filterMovies(tvs),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: blackColor,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white54,
        showSelectedLabels: true, // Hides labels for selected items
        showUnselectedLabels: true, // Hides labels for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home", // Empty label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: "Live TV", // Empty label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Movies", // Empty label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "Shows", // Empty label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite", // Empty label
          ),
        ],
      ),
    );
  }

  // Function to filter movies or TV shows based on the search query
  List<Movie> _filterMovies(List<Movie> originalList) {
    if (_searchQuery.isEmpty) {
      return originalList; // Return the original list if no query is entered
    }
    return originalList
        .where((movie) =>
            movie.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList(); // Filter based on the query
  }
}
