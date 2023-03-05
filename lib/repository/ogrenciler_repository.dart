class OgrencilerRepository {
  List<Ogrenci> ogrenciler = [
    Ogrenci("İbrahim Efe", "Çelemen", 19, "Erkek"),
    Ogrenci("Mert Şerafettin", "Kargı", 20, "Erkek"),
    Ogrenci("Şimal", "Menekşe", 20, "Kadın"),
  ];

  Set<Ogrenci> sevdiklerim = {};

  void sev(Ogrenci ogrenci) {
    sevdiklerim.add(ogrenci);
  }

  void sevme(Ogrenci ogrenci) {
    sevdiklerim.remove(ogrenci);
  }
}

class Ogrenci {
  String ad;
  String soyad;
  int yas;
  String cinsiyet;

  Ogrenci(this.ad, this.soyad, this.yas, this.cinsiyet);
}
