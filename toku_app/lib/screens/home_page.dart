import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/color_page.dart';
import 'package:toku_app/screens/family_memebers.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMemebersPage();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorPage();
              }));
            },
          ),
          Category(
            text: 'Phases',
            color: const Color.fromARGB(255, 0, 221, 251),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
