import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/ogrenciler_sayfasi.dart';
import 'package:ogrenci_app/pages/ogretmenler_sayfasi.dart';
import 'package:ogrenci_app/pages/mesajlar_sayfasi.dart';
import 'package:ogrenci_app/repository/mesajlar_repository.dart';
import 'package:ogrenci_app/repository/ogrenciler_repository.dart';
import 'package:ogrenci_app/repository/ogretmenler_repository.dart';

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

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key, required this.title});

  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  MesajlarRepository mesajlarRepository = MesajlarRepository();
  OgrencilerRepository ogrencilerRepository = OgrencilerRepository();
  OgretmenlerRepository ogretmenlerRepository = OgretmenlerRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                _ogrencilereGit(context);
              },
              child: Text(
                  style: TextStyle(fontSize: 20),
                  "${OgrencilerRepository().ogrenciler.length} Öğrenci"),
            ),
            //SizedBox(),
            TextButton(
                onPressed: () {
                  _ogretmenlereGit(context);
                },
                child: Text(
                    style: TextStyle(fontSize: 20),
                    "${OgretmenlerRepository().ogretmenler.length} Öğretmen")),

            TextButton(
              child: Text(
                  style: TextStyle(fontSize: 20),
                  "${MesajlarRepository().yeniMesajSayisi} yeni mesaj"),
              onPressed: () {
                _mesajlaraGit(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _ogrencilereGit(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return OgrencilerSayfasi(ogrencilerRepository);
    }));
  }

  void _ogretmenlereGit(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return OgretmenlerSayfasi(ogretmenlerRepository);
    }));
  }

  Future<void> _mesajlaraGit(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return MesajlarSayfasi(mesajlarRepository);
    }));
    setState(() {
      //print("${mesajlarRepository.yeniMesajSayisi}");
    });
  }
}
