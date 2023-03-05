class MesajlarRepository {
  final List<Mesaj> mesajlar = [
    Mesaj("Selamınaleyküm", "Kasap Osman",
        DateTime.now().subtract(Duration(days: 1))),
    Mesaj("Aleykümselam abi", "Sarı Hasan",
        DateTime.now().subtract(Duration(minutes: 6))),
    Mesaj("Susun la kafam şişti", "Ahmet", DateTime.now())
  ];
}

class Mesaj {
  String yazi;
  String gonderen;
  DateTime zaman;

  Mesaj(this.yazi, this.gonderen, this.zaman);
}
