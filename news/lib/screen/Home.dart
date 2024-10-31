import 'package:flutter/material.dart';
import 'package:news/screen/app_bar.dart';
import 'package:news/models/categories_model.dart';
import 'package:news/components/categories_item.dart';
import 'package:news/screen/sport.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<CategoriesModel> categories = [
    CategoriesModel(
      title: 'Sports',
      icon: Icons.sports_soccer,
      color: const Color.fromARGB(255, 173, 18, 6),
      ontap: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SportsPage();
        }));
      },
    ),
    CategoriesModel(
        title: 'Politics',
        icon: Icons.gavel,
        color: const Color.fromARGB(255, 0, 36, 241),
        ontap: (context) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SportsPage();
          }));
        }),
    CategoriesModel(
        title: 'Health',
        icon: Icons.favorite,
        color: const Color.fromARGB(255, 245, 46, 212),
        ontap: (context) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SportsPage();
          }));
        }),
    CategoriesModel(
        title: 'Business',
        icon: Icons.business,
        color: const Color.fromARGB(255, 228, 123, 62),
        ontap: (context) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SportsPage();
          }));
        }),
    CategoriesModel(
      title: 'Environment',
      icon: Icons.eco,
      color: Colors.blue,
      ontap: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SportsPage();
        }));
      },
    ),
    CategoriesModel(
        title: 'Sience',
        icon: Icons.science,
        color: const Color(0xffFFF59D),
        ontap: (context) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SportsPage();
          }));
        }),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: AppBar(
            backgroundColor: Colors.green,
            title: const Text(
              'News App',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Pick your category\nof interest',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Number of columns
              padding: const EdgeInsets.all(10.0),
              children: categories
                  .map((category) => CategoryItem(
                        category: category,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
