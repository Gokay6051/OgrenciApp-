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
                child: Text(
                    style: TextStyle(fontSize: 22),
                    "${widget.ogrencilerRepository.ogrenciler.length} Öğrenci"),
              ),
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) => OgrenciSatiri(
              widget.ogrencilerRepository.ogrenciler[index],
              widget.ogrencilerRepository,
            ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: widget.ogrencilerRepository.ogrenciler.length,
          ))
        ],
      ),
    );
  }
}

class OgrenciSatiri extends StatefulWidget {
  final Ogrenci ogrenci;
  final OgrencilerRepository ogrencilerRepository;
  const OgrenciSatiri(
    this.ogrenci,
    this.ogrencilerRepository, {
    Key? key,
  }) : super(key: key);

  @override
  State<OgrenciSatiri> createState() => _OgrenciSatiriState();
}

class _OgrenciSatiriState extends State<OgrenciSatiri> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${widget.ogrenci.ad} ${widget.ogrenci.soyad}"),
      trailing: IconButton(
          onPressed: () {
            setState(() {
              widget.ogrencilerRepository.sevdiklerim.contains(widget.ogrenci)
                  ? widget.ogrencilerRepository.sevme(widget.ogrenci)
                  : widget.ogrencilerRepository.sev(widget.ogrenci);
            });
          },
          icon: Icon(
              widget.ogrencilerRepository.sevdiklerim.contains(widget.ogrenci)
                  ? Icons.favorite
                  : Icons.favorite_border)),
    );
  }
}
