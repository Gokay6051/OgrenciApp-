import 'package:flutter/material.dart';
import 'package:ogrenci_app/repository/ogretmenler_repository.dart';

class OgretmenlerSayfasi extends StatefulWidget {
  final OgretmenlerRepository ogretmenlerRepository;
  const OgretmenlerSayfasi(this.ogretmenlerRepository, {Key? key})
      : super(key: key);

  @override
  State<OgretmenlerSayfasi> createState() => _OgretmenlerSayfasiState();
}

class _OgretmenlerSayfasiState extends State<OgretmenlerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğretmenler"),
      ),
      body: Column(
        children: [
          PhysicalModel(
            color: Colors.white70,
            elevation: 10,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Text(style: TextStyle(fontSize: 22), "15 Öğretmen"),
              ),
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text("Osman"),
              ),
            ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 15,
          ))
        ],
      ),
    );
  }
}
