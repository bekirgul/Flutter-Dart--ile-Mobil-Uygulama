import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';


class FamilyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ailem'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FamilyMemberCard(
              name: 'Oğlum',
              imageUrl:
                  'https://img.freepik.com/premium-vector/father-avatar-character-icon_24877-9293.jpg',
            ),
            SizedBox(height: 16),
            FamilyMemberCard(
              name: 'Kızım',
              imageUrl:
                  'https://img.freepik.com/premium-vector/beautiful-girl-with-long-black-hair-sweater_6138-239.jpg',
            ),
            SizedBox(height: 16),
            FamilyMemberCard(
              name: 'Torunum',
              imageUrl:
                  'https://img.freepik.com/free-vector/grandfather-with-grandson-avatar-character_24877-57633.jpg?w=2000',
            ),
          ],
        ),
      ),
    );
  }
}

class FamilyMemberCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const FamilyMemberCard({
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
