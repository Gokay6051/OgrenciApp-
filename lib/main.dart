import 'package:flutter/material.dart';
import 'package:ogrenci_app/ogrenciler_sayfasi.dart';
import 'package:ogrenci_app/ogretmenler_sayfasi.dart';
import 'package:ogrenci_app/mesajlar_sayfasi.dart';

void main() {
  runApp(const OgrenciApp());
}

class OgrenciApp extends StatelessWidget {
  const OgrenciApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Öğrenci Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(title: 'Öğrenci Anasayfa'),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => OgrencilerSayfasi(),
                ));
              },
              child: Text(style: TextStyle(fontSize: 20), "Öğrenciler"),
            ),
            //SizedBox(),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OgretmenlerSayfasi(),
                  ));
                },
                child: Text(style: TextStyle(fontSize: 20), "Öğretmenler")),

            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MesajlarSayfasi(),
                  ));
                },
                child: Text(style: TextStyle(fontSize: 20), "Mesajlar"))
          ],
        ),
      ),
    );
  }
}
