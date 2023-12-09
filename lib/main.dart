import 'package:flutter/material.dart';
import 'package:flutter_application_1/CameraButton.dart';
import 'package:flutter_application_1/DailyActivitiesPage.dart';
import 'package:flutter_application_1/FamilyPage.dart';
import 'package:flutter_application_1/MemoryGamesPage.dart';
import 'package:flutter_application_1/PeoplePage.dart';

// Ana Uygulama
void main() {
  runApp(MyApp());
}     

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false, // Debug yazısı olmadan
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


// Ana Sayfa
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MINDLIGTH'), // Uygulama başlığı
        titleTextStyle: const TextStyle(color: Colors.yellow, fontSize: 23 ),
        
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.network('https://img.photolamus.com/APuUrPev/x660/46fd5c2284aa2275e471ad45b6323ef1/ya%C5%9Fl%C4%B1-adam-karikat%C3%BCr%C3%BC.jpg', width: 180, height: 180), // Sol üst görsel
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.network('https://www.yasliyimhakliyim.com/wp-content/uploads/2019/10/Ba%C5%9Fl%C4%B1ks%C4%B1z-2.jpg', width: 180, height: 180), // Sağ alt görsel
          ),
          const Center(
            child: Text(
    "Alzheimer hastalarının yaşadığı zorlukları anlamak ve hayatlarını kolaylaştırmak amacıyla geliştirilmiş olan mobil uygulamamız, Alzheimer hastaları "
    "için özel olarak tasarlanmış bir arayüz sunuyor. Uygulamamızda, kullanıcılar için kişiselleştirilmiş hafıza oyunları, hatırlatıcılar, günlük etkinlik "
   " planlayıcıları ve sosyal etkileşim özellikleri bulunuyor.",
    style: TextStyle(fontSize: 20, color: Colors.black87),
    textAlign: TextAlign.center,
  ),
),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menü'),
            ),
            ListTile(
              title: Text('Günlük Aktiviteler'), // Günlük aktiviteler sayfasına yönlendirme
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DailyActivitiesPage()),
                );
              },
            ),
          
            ListTile(
              title: Text('Ailem'), // Ailem sayfasına yönlendirme
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FamilyPage()),
                );
              },
            ),
            ListTile(
              title: Text('Hafıza Oyunları'), // Hafıza oyunları sayfasına yönlendirme
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemoryGamesPage()),
                );
              },
            ),
            ListTile(
              title: Text('Kamera'), // Kamera butonuna yönlendirme
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraButton()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
