class OgretmenlerRepository {
  List<Ogretmen> ogretmenler = [
    Ogretmen("Mustafa", "Sandal", 19, "Erkek"),
    Ogretmen("Rasim Ozan", "Kütahyalı", 20, "Erkek"),
    Ogretmen("Muazzes", "Ersoy", 20, "Kadın"),
  ];

  Set<Ogretmen> sevdiklerim = {};

  void sev(Ogretmen ogretmen) {
    sevdiklerim.add(ogretmen);
  }

  void sevme(Ogretmen ogretmen) {
    sevdiklerim.remove(ogretmen);
  }
}

class Ogretmen {
  String ad;
  String soyad;
  int yas;
  String cinsiyet;

  Ogretmen(this.ad, this.soyad, this.yas, this.cinsiyet);
}
