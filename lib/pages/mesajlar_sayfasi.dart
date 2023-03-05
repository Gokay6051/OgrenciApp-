import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ogrenci_app/repository/mesajlar_repository.dart';

class MesajlarSayfasi extends StatefulWidget {
  final MesajlarRepository mesajlarRepository;
  const MesajlarSayfasi(this.mesajlarRepository, {Key? key}) : super(key: key);

  @override
  State<MesajlarSayfasi> createState() => _MesajlarSayfasiState();
}

class _MesajlarSayfasiState extends State<MesajlarSayfasi> {
  @override
  void initState() {
    widget.mesajlarRepository.yeniMesajSayisi = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesajlar"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                reverse: true,
                itemCount: widget.mesajlarRepository.mesajlar.length,
                itemBuilder: (context, index) {
                  return MesajGorunumu(widget.mesajlarRepository.mesajlar[
                      widget.mesajlarRepository.mesajlar.length - index - 1]);
                }),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.send)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MesajGorunumu extends StatelessWidget {
  final Mesaj mesaj;
  const MesajGorunumu(
    this.mesaj, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: mesaj.gonderen == "Ahmet"
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              color:
                  mesaj.gonderen == "Ahmet" ? Colors.lightGreen : Colors.cyan,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 8),
            child: Column(
              children: [
                Text(
                  mesaj.gonderen,
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  mesaj.yazi,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
