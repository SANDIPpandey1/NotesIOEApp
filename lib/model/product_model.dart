import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Product {
  final String image, title, courses;
  final int id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "IOE Notes",
    image: "assets/images/ioenotes.png",
    color: Color(0xFF71b8ff),
    courses: 'Exam Ayo?',
  ),
  Product(
    id: 2,
    title: "IOE Syllabus",
    image: "assets/images/ioesyllabus.png",
    color: Color(0xFFff6374),
    courses: 'Dherai Padhnu Xa!',
  ),
  Product(
    id: 3,
    title: "IOE Questions",
    image: "assets/images/extra.png",
    color: Color(0xFFffaa5b),
    courses: 'Uff! Garooo',
  ),
  Product(
    id: 4,
    title: "+2 Notes",
    image: "assets/images/collegenotes.png",
    color: Color(0xFF9ba0fc),
    courses: "Moj Gara",
  ),
  Product(
    id: 4,
    title: "News/Results",
    image: "assets/images/news.png",
    color: Color(0xFF6bd98b),
    courses: 'Mah Timro RONB!',
  ),
  Product(
    id: 4,
    title: "Helpful Articles",
    image: "assets/images/articles.png",
    color: Color(0xFFffd166),
    courses: 'Kehi Aru Padham..',
  ),
];
