import 'package:flutter/material.dart';

class CategoriesModel {
  final String title;
  final IconData icon;
  final Color color;
  final Function(BuildContext) ontap;

  CategoriesModel({
    required this.color,
    required this.title,
    required this.icon,
    required this.ontap,
  });
}