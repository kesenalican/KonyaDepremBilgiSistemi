import 'package:flutter/material.dart';

class DepremCantasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Çantasında Olması Gerekenler",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "\n\n\t\t\tTürkiye üzerinde bulunduğu çeşitli deprem kuşakları nedeniyle şiddetli depremlere şahit "
                          "olabilecek bir konumdadır. Bu sebeple gerekli tedbirler alınarak can ve mal kayıpları önlenebilir "
                          "veya en aza indirgenebilir. Dayanıklı binalar yapmak, deprem sigortası yaptırmak, vatandaşları "
                          "bilinçlendirmek gibi hayat kurtaran önlemler alınabilir. Şiddetli bir deprem sonrasında yaşanan "
                          "kaos ortamında temel ihtiyaçların pratik bir şekilde giderebilmek için deprem çantası "
                          "hazırlamak gerekiyor. Depremden sonra eviniz hasar almasa da dışarıda kalmanız "
                          "gerekebilir. Bu nedenle acil ihtiyaç duyabileceğiniz eşyalar için bir deprem çantası hazırlamalısınız.\n"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "DEPREM ÇANTASINDA NELER BULUNMALIDIR?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("- GIDA\n"
                              "- GİYECEKLER\n"
                              "- HİJYEN İÇİN\n GEREKLİ MALZEMELER\n"
                              "- DİĞER\n"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Image(
                              image: AssetImage("images/canta1.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "GIDA",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child:  Container(
                              height: 100,
                              width: 100,
                              child: Image(
                                image: AssetImage("images/canta2.jpg"),
                              )),
                        ),

                        SizedBox(
                          width: 25,
                        ),
                        Text(
                            "Yüksek kalorili, vitamin\nve karbonhidrat içeren, su kaybını\n"
                            "önleyen ve dayanıklı(çabuk bozulmayan)\ngıdalar tercih  edilmelidir.\n"),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "•	SU (Herbir aile üyesi düşünülerek yeterli miktarda su alınmalı) \n"
                          "•	KONSERVE\n"
                          "•	KURU MEYVELER\n"
                          "•	TAHİN-PEKMEZ \n"
                          "•	MEYVE SUYU  VB.\n"),
                    ),
                    Text(
                      "ÖNEMLİ BELGE FOTOKOPİLERİ VE EVRAKLAR",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "• Kimlik Kartları(nüfus cüzdanı,ehliyet vb.)\n"
                              "• Tapu, sigorta,ruhsat belgeleri\n"
                              "• Zorunlu Deprem Poliçesi\n"
                              "• Diplomalar\n"
                              "• Pasaport, banka cüzdanı vb.\n"
                              "• Diğer (evcil hayvan sağlık karnesi, vb.)\n"),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage("images/canta3.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "GİYECEKLER",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Image(
                              image: AssetImage("images/canta4.jpg"),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 40,
                        ),
                        Text("• İklime uygun giysiler\n"
                            "• İç Çamaşırı\n"
                            "• Yağmurluk\n"
                            "• Çorap\n"
                            "• Ayakkabı\n"),
                      ],
                    ),
                    Text(
                      "HİJYEN İÇİN GEREKLİ MALZEMELER",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("• Diş fırçası ve macunu\n"
                              "• Sabun ve Dezenfektanlar\n"
                              "• Tuvalet atıkları için naylon poşet\n"
                              "• Tuvalet kâğıdı\n"
                              "• Hijyenik ped\n"
                              "• Islak mendil\n"),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          child: Image(
                            image: AssetImage("images/canta5.png"),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "DİĞER MALZEMELER\n",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 150,
                          width: 150,
                          child: Image(
                            image: AssetImage("images/canta6.png"),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text("- İlk Yardım Çantası\n"
                            "• Uyku tulumu ve Battaniye\n"
                            "• Çakı, düdük, küçükmakas\n"
                            "• Bir miktar para\n"
                            "• Kâğıt, kalem\n"
                            "• Kibrit ve çakmak\n"
                            "• Çadır\n"
                            "• Yedek ev,iş yeri ve araba anahtarı\n"
                            "• Pilli radyo,el feneri,yedek piller\n"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 100,
                              width: 100,
                              child: Image(
                                image: AssetImage("images/canta8.png"),
                              )),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Image(
                            image: AssetImage("images/canta9.png"),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Image(
                            image: AssetImage("images/canta10.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Eğer Bebeğiniz Varsa;",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                        height: 200,
                        width: 200,
                        child: Image(
                          image: AssetImage("images/canta11.png"),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("• Mama\n"
                          "• Bebek bezi\n"
                          "• Biberon\n"
                          "• İlaçlar\n"
                          "• Yedek giyecek\n"
                          "• Sahip olduğu rahatsızlıklar, kullanılan ilaçlar, alerjiler, ihtiyaç duyulan özel ekipman ve "
                          "protezler ile doktor, aile iletişim ve adres bilgilerini kapsayan, "
                          "tüm acil durum bilgilerinin yer aldığı bir kart.\n"),
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Yaşlı bireyler için;\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("• Reçeteli ilaçları,rahatsızlıkları\n"
                                "• Alerjiler, ihtiyaç duyulan özel\n"
                                " ekipman ve "
                                "protezler ile doktor,\n"
                                " aile iletişim ve adres\n "
                                "bilgilerini kapsayan tüm acil durum\n"
                                "bilgilerinin yer aldığı bir kart.\n"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            child: Image(
                              image: AssetImage("images/canta12.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Engelli bireyler için;\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("• Fiziksel engeli\n"
                                  "• Sahip olduğu alerjiler ve\n"
                                  "rahatsızlıklar\n"
                                  "• İlaçları\n"
                                  "• İhtiyaç duyulan özel ekipman\n"
                                  "ve protezler ile doktor, aile\n "
                                  "iletişim ve adres bilgilerini\n"
                                  "kapsayan, tüm acil durum\n"
                                  "bilgilerinin yer aldığı bir kart.\n"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 180,
                            child: Image(
                              image: AssetImage("images/canta13.png"),
                            ),
                          ),
                        ),
                      ],
                    ),





                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                               Text(
                                "Evcil Hayvanlarınız için;\n",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("• Güncel bir fotoğrafı\n"
                                  "• İlk yardım malzemeleri,ilaçları\n"
                                  "rahatsızlıklar\n"
                                  "• Veteriner bilgileri\n"
                                  "• Tasma ve Sevk kayışı\n"
                                  "• Aşı kayıtları\n "
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            child: Image(
                              image: AssetImage("images/canta14.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
