import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/itemmodel.dart';

// ignore: must_be_immutable
class FamilyMemebersPage extends StatelessWidget {
  FamilyMemebersPage({super.key});

  List<ItemModel> familymembers = [
    const ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Oya',
      enName: 'Grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Ane',
      enName: 'Grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'Chichioya',
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'Musume',
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Nani',
      enName: 'Older bother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'Ane',
      enName: 'Older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/younger brother.wav',
      jpName: 'Otachi',
      enName: 'Younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    const ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'Onna',
      enName: 'Younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),      
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'FamilyMemebers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familymembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff558B37),
            item: familymembers[index],
          );
        },
      ),
    );
  }
}
