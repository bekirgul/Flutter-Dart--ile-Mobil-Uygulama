import 'package:flutter/material.dart';

class DailyActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Günlük Aktiviteler"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0), // Kenar boşluklarını ayarlar
        children: [
          ActivityCard(
            title: 'Sabah Egzersizleri', // Aktivite başlığı
            description: '10 dakika boyunca hafif egzersiz yapın.', // Aktivite açıklaması
            icon: Icons.directions_run, // Aktivite simgesi (icon)
          ),
          ActivityCard(
            title: 'Kahvaltı', // Aktivite başlığı
            description: 'Sağlıklı bir kahvaltı yapın.', // Aktivite açıklaması
            icon: Icons.restaurant, // Aktivite simgesi (icon)
          ),
          ActivityCard(
            title: 'Ruh Hali Günlüğü', // Aktivite başlığı
            description: 'Bugün hissettiklerinizi günlüğe yazın.', // Aktivite açıklaması
            icon: Icons.book, // Aktivite simgesi (icon)
          ),
          ActivityCard(
            title: 'Yürüyüş', // Aktivite başlığı
            description: 'Parkta veya bahçede yürüyüş yapın.', // Aktivite açıklaması
            icon: Icons.directions_walk, // Aktivite simgesi (icon)
          ),
          ActivityCard(
            title: 'Hafıza Oyunu', // Aktivite başlığı
            description: 'Bir hafıza oyunu oynayın.', // Aktivite açıklaması
            icon: Icons.extension, // Aktivite simgesi (icon)
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title; // Aktivite başlığı
  final String description; // Aktivite açıklaması
  final IconData icon; // Aktivite simgesi (icon)

  ActivityCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon), // Aktivite simgesini (icon) gösterir
        title: Text(title), // Aktivite başlığını gösterir
        subtitle: Text(description), // Aktivite açıklamasını gösterir
      ),
    );
  }
}
