class OgretmenlerRepository {
  List ogretmenler = [
    Ogretmen("Mustafa", "Sandal", 19, "Erkek"),
    Ogretmen("Rasim Ozan", "Kütahyalı", 20, "Erkek"),
    Ogretmen("Muazzes", "Ersoy", 20, "Kadın"),
  ];
}

class Ogretmen {
  String ad;
  String soyad;
  int yas;
  String cinsiyet;

  Ogretmen(this.ad, this.soyad, this.yas, this.cinsiyet);
}
