import 'package:flutter/material.dart';
import 'package:testing_flutter_project/movie_UI/components.dart';
import 'package:testing_flutter_project/movie_UI/model/movie.dart';

class NewMovieWidget extends StatelessWidget {
  const NewMovieWidget({super.key, required this.title, required this.movies});

  final String title;
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleWidget(title: title),
        const SizedBox(height: 10), // Add spacing
        SizedBox(
          height: 250, // Define a fixed height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Horizontal scrolling
            itemCount: movies.length,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    width: 120, // Set a fixed width
                    height: 180, // Add height to the container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage(movies[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing below the container
                  SizedBox(
                    width: 120,
                    child: Text(
                      movies[index].name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
