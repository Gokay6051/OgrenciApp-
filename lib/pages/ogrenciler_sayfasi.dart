import 'package:flutter/material.dart';
import 'package:ogrenci_app/repository/ogrenciler_repository.dart';

class OgrencilerSayfasi extends StatefulWidget {
  final OgrencilerRepository ogrencilerRepository;
  const OgrencilerSayfasi(this.ogrencilerRepository, {Key? key})
      : super(key: key);

  @override
  State<OgrencilerSayfasi> createState() => _OgrencilerSayfasiState();
}

class _OgrencilerSayfasiState extends State<OgrencilerSayfasi> {
  int ogrenci = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenciler"),
      ),
      body: Column(
        children: [
          PhysicalModel(
            color: Colors.white70,
            elevation: 10,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Text(style: TextStyle(fontSize: 22), "$ogrenci Öğrenci"),
              ),
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text("Ali"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_border)),
              ),
            ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: ogrenci,
          ))
        ],
      ),
    );
  }
}
