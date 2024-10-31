import 'package:flutter/material.dart';

void main() => runApp(SportsApp());

class SportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SportsPage(),
    );
  }
}

class SportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sports'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Search functionality
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          NewsCard(
            imageUrl: 'https://via.placeholder.com/150', // Replace with actual image URL
            title: "Why are football's biggest clubs starting a new tournament?",
            time: '3 hours ago',
          ),
          NewsCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: "Why are football's biggest clubs starting a new tournament?",
            time: '3 hours ago',
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  NewsCard({required this.imageUrl, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.network(imageUrl, width: 100, height: 100, fit: BoxFit.cover),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}