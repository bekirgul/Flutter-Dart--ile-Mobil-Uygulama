import 'dart:async';
import 'dart:io' show File, Platform;
//import 'dart:ui';
//import 'package:tasarim/Hafiza_oyunlari.dart'; 
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart'; 
//import 'package:flutter_icons/flutter_icons.dart'; 
//import 'package:url_launcher/url_launcher.dart';
// import 'package:camera/camera.dart'; 
//import 'package:geolocator/geolocator.dart'; 
import 'package:image_picker/image_picker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

const MyApp({super.key});

static const String _title = 'MINDLIGHT';

@override Widget build(BuildContext context) {

return MaterialApp(
  debugShowCheckedModeBanner: false,  // debug yazısını kaldırmak için false yapıldı.
  title: _title,
  theme: ThemeData(
    // Varsayılan olarak ayarlanan parlaklık ve renkler.
    // brightness: Brightness.dark,
    primaryColor: Colors.pink,
    backgroundColor: Colors.yellow,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue), // En üstteki AppBar'ın rengini değiştiriyor.


  ),


  home: Scaffold(
    backgroundColor: Colors.blueGrey, //Arka plan renk değiştirme
    appBar: AppBar(title: const Text(_title),titleTextStyle: TextStyle(fontSize: 25,color: Colors.yellow)),
    // appBar:AppBar(titleTextStyle: TextStyle(fontSize: 300),)
    body: const MyStatefulWidget(

    ),


    drawer: Drawer(
        backgroundColor: Colors.blue, //açılan menünün arka plan rengini ayarlamak için
        shape: Border.all(color: Colors.orange,width: 5),  // Açılır menünün çerçece ayarları için


        /* Çekmeceye bir ListView ekleyin. Bu, her şeyi sığdırmak için
   yeterli dikey alan yoksa kullanıcının çekmecedeki seçenekler
   arasında gezinebilmesini sağlar.
    */
        child: ListView(

          padding: EdgeInsets.zero,

          children: [

            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,

              ),
              child: Text('MENU'),


            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                child: const Text(
                  'Kamera',

                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),

                ),


                onPressed: () async{}


            ),

            const SizedBox(width: 30,height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
              ),
              child: const Text(
                'Hafiza oyunlari',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
              onPressed: (){ Navigator.push
                (
                  context,
                   MaterialPageRoute(builder: (context) =>  Hafiza_oyunlari()),
                );
              },
            ),




            //Butonlar arasında  boşluk
            const SizedBox(width: 30,height: 30,),


            ElevatedButton(
              onPressed: () {},

              //Button rengi
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),

              // Button ismi ve yazı ayarları
              child: const Text('Ailem',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue),
              ),
            ),


            const SizedBox(width: 30,height: 30),
            ElevatedButton(

              //Button rengi
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),

              onPressed: () {},

              // Button ismi ve yazı ayarları
              child: const Text('Kisiler',
                style: TextStyle(
                    fontSize:25,
                    color: Colors.blue),
              ),
            ),

            const SizedBox(width: 30,height: 30),


            ElevatedButton(

              //Button rengi
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),

              onPressed: () {},

              // Button ismi ve yazı ayarları
              child: const Text('Gunluk aktiviteler',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue),),
            )

          ],        
      )
    ),
  ),
 
);

} }



class MyStatefulWidget extends StatefulWidget { const MyStatefulWidget({super.key});

@override State createState() => _MyStatefulWidgetState(); }

class _MyStatefulWidgetState extends State { @override Widget build(BuildContext context) { final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20,));

// Buttonbar hizalanma yönü
return Center(


  child: Column(



    children: [




      //Resim ekleme ve ayarları için

      Container (
        alignment: Alignment.topLeft,


        child: FadeInImage.memoryNetwork (
          placeholder: kTransparentImage,
          image: 'https://img.photolamus.com/APuUrPev/x660/46fd5c2284aa2275e471ad45b6323ef1/ya%C5%9Fl%C4%B1-adam-karikat%C3%BCr%C3%BC.jpg',
          width: 180,
          height: 180,

        ),

      ),


      //Resimler arası text ayarları
      Container(
        alignment: Alignment.centerLeft,

        child: Text("Alzheimer hastalarının yaşadığı zorlukları anlamak ve hayatlarını kolaylaştırmak amacıyla geliştirilmiş olan mobil uygulamamız,"
            " Alzheimer hastaları için özel olarak tasarlanmış bir arayüz sunuyor. Uygulamamızda, kullanıcılar için kişiselleştirilmiş hafıza oyunları, "
            "hatırlatıcılar, günlük etkinlik planlayıcıları ve sosyal etkileşim özellikleri bulunuyor.",
            style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,backgroundColor: Colors.transparent,color: Colors.black87)),


        width: 380,
        height: 230,

      ),








      Container(
        alignment: Alignment.bottomRight,


        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: 'https://www.yasliyimhakliyim.com/wp-content/uploads/2019/10/Ba%C5%9Fl%C4%B1ks%C4%B1z-2.jpg',


          width: 180,
          height: 180,


        ),

      ),









      /* Container(
    child: const Text(
      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir."
          "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir"
          "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir"
          "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir"
          "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdirLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir"
          "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir"
          "",
      style: TextStyle(
        color: Colors.red,

      ),
  ),


      )*/

    ],


  ),

  



 
);
} 
}


class Hafiza_oyunlari extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa 2")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              child: Text("Geri dön!", style: TextStyle(fontSize: 20)),
              onPressed: () => Navigator.pop(context),
            ),
           /* ElevatedButton(
              child: Text("Sayfa 3'e Git!", style: TextStyle(fontSize: 20)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sayfa3()),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}


















