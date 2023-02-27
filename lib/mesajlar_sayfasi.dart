import 'dart:math';

import 'package:flutter/material.dart';

class MesajlarSayfasi extends StatefulWidget {
  const MesajlarSayfasi({Key? key}) : super(key: key);

  @override
  State<MesajlarSayfasi> createState() => _MesajlarSayfasiState();
}

class _MesajlarSayfasiState extends State<MesajlarSayfasi> {
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
                itemBuilder: (context, index) {
                  bool benMiyim = Random().nextBool();
                  return Align(
                    alignment:
                        benMiyim ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            color: benMiyim ? Colors.lightGreen : Colors.cyan,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 8),
                          child: Text(
                            "Mesaj uzun mesaj",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  );
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
