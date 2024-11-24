import 'package:flutter/material.dart';
import 'package:testing_flutter_project/movie_UI/model/movie.dart';

String imageUrl(String name) => 'images/movies/$name';

final trending = [
  Movie(name: 'Blue Bette', imageUrl: imageUrl("blue bettle.jpg")),
  Movie(name: "Light House", imageUrl: imageUrl("light house.jpg")),
  Movie(name: "Five Night", imageUrl: imageUrl("five night.jpg")),
  Movie(name: "The Wild Robot", imageUrl: imageUrl("the wild robot.jpg")),
  Movie(name: "Coco", imageUrl: imageUrl("coco.jpg")),
];

final movies = [
  Movie(name: "Alien", imageUrl: imageUrl("alien.jpg")),
  Movie(name: "Black Phone", imageUrl: imageUrl("black phone.jpg")),
  Movie(
      name: "Captain Underware", imageUrl: imageUrl("capatain underware.jpg")),
  Movie(name: "Dead Pool", imageUrl: imageUrl("dead pool.jpg")),
  Movie(name: "Finding Doroya", imageUrl: imageUrl("finding dory.jpg")),
];

final tvs = [
  Movie(name: "Hell Boy", imageUrl: imageUrl("hell boy.jpg")),
  Movie(name: "Incredible", imageUrl: imageUrl("incredibles.jpg")),
  Movie(name: "Iron Man", imageUrl: imageUrl("ironman.jpg")),
  Movie(name: "Rock Dog", imageUrl: imageUrl("rock dog.jpg")),
  Movie(name: "Venom ", imageUrl: imageUrl("venom.jpg")),
];

final suggestion = [
  Movie(
      name: "Spider Man No Way Home",
      imageUrl: imageUrl("spiderman no way home.jpg")),
  Movie(name: "Sonic", imageUrl: imageUrl("sonic.jpg")),
  Movie(name: "Gemini Man", imageUrl: imageUrl("gemini man.jpg")),
  Movie(name: "Bad Guys", imageUrl: imageUrl("bad guys.jpg")),
  Movie(name: "Wonder Woman", imageUrl: imageUrl("wonder woman.jpg")),
];
