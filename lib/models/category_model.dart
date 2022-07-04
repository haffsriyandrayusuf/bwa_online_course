import 'package:flutter/material.dart';

class Category {
  final String name;
  final int totalCourse;
  final IconData icon;

  Category({
    required this.name,
    required this.totalCourse,
    required this.icon,
  });
}

List<Category> listCategory = [
  Category(
    name: 'Design',
    totalCourse: 49,
    icon: Icons.design_services_outlined,
  ),
  Category(
    name: 'Soft Skill',
    totalCourse: 12,
    icon: Icons.book_online_outlined,
  ),
  Category(
    name: 'Mobile',
    totalCourse: 50,
    icon: Icons.smartphone_outlined,
  ),
  Category(
    name: 'Web',
    totalCourse: 24,
    icon: Icons.computer_outlined,
  ),
];
