import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DepremDergi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Dergileri",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Column(
              children: <Widget>[
                Text(
                  "DEPREMLERİ KONU ALAN DERGİLER",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "1-) Türk Deprem Araştırma Dergisi",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "\t\t\tAFAD Deprem Araştırma Dairesi tarafından Nisan 1973-Nisan 2000 tarihleri arasında 84 "
                      "sayı olarak süreli yayımlanan ancak daha sonra yayın hayatına ara veren  'Deprem Araştırma "
                      "Bülteni' AFAD bünyesinde,  'Türk Deprem  Araştırma  Dergisi' adıyla 2019 yılında tekrar "
                      "yayımlanmaya başlamıştır. Ülkemizin deprem hafızasını barındıran daha önce yayımlanmış "
                      "bütün sayılara aşağıdaki linkten ulaşabilirsiniz."),
                ),
                InkWell(
                  onTap: () => launch('https://deprem.afad.gov.tr'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "deprem.afad.gov.tr",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage("images/dergi1.png"),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "2-) Mimarlık Dergisi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\t\tTürkiye’nin en büyük depremi\n"
                                  "olarak gösterilen 1999 depreminin\n"
                                  "üzerinden tam 21 yıl geçti. Bu yirmi\n"
                                  "yılda önemli gelişmeler yapılsa da\n"
                                  "yazar, kentlerin afet risk profillerinin\n"
                                  "teknolojik gelişmelerle ele alınmasını\n"
                                  "ve bu riskleri azaltmak için ivedilikle\n"
                                  "harekete geçirilmesini önemle\n"
                                  "vurguluyor."),
                            ),
                          ],
                        ),
                        Container(
                          height: 400,
                          width: 150,
                          child: Image(
                            image: AssetImage("images/dergi2.png"),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => launch(
                            'http://www.mimarlikdergisi.com/index.cfm?sayfa=mimarlik&DergiSayi=423&RecID=4810'),
                        child: Text(
                          "http://www.mimarlikdergisi.com/index.cfm?sayfa=mimarlik&DergiSayi=423&RecID=4810",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "3-) İstanbul Teknik Üniversitesi\nVakfı Dergisi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("İTÜ Vakfı Dergisi 67. Sayısını\n"
                                  "'DEPREM"
                                  "DOSYA 2' başlığı ile\n"
                                  "makalesini"
                                  "yayımlayarak okuyucuya\n"
                                  "sunmuştur. Bu"
                                  "sayıda yazar\n"
                                  "deprem riski altındaki\n"
                                  "bölgelerde kentsel planlama\n"
                                  "ve afet sonrası"
                                  "konut\n yapımını önemle vurgulamıştır.\n"
                                  "Dergiye aşağıdaki makaleden\n"
                                  " ulaşabilirsiniz."),
                            ),
                          ],
                        ),
                        Container(
                          height: 400,
                          width: 150,
                          child: Image(
                            image: AssetImage("images/dergi3.jpg"),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () => launch(
                          'https://www.ituvakif.org.tr/dergi/sayi_67.pdf'),
                      child: Text(
                        "https://www.ituvakif.org.tr/dergi/sayi_67.pdf",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 400,
                          width: 150,
                          child: Image(
                            image: AssetImage("images/dergi4.jpg"),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "4-) Doğal Afetler ve Çevre Dergisi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Yazar bu dergide ‘Afet\n"
                                  "Planlamasında\n"
                                  "Deprem Riski Belirsizliklerinin\n"
                                  "Değerlendirilmesi’ makalesini\n"
                                  "okuyucuya sunmuştur.\n"
                                  "Bu çalışmada deprem risk\n"
                                  "değerlendirmesine, yer hareketi, yapı\n"
                                  "envanteri ve yöntem\n"
                                  "bileşenlerinde mevcut\n"
                                  "olan belirsizliklerin etkisi\n"
                                  "araştırılmıştır.\n"
                                  "Çalışmada 1999 depreminin\n"
                                  "gerçekleştiği\n"
                                  "yer olan Gebze ilçesi seçilmiş,\n"
                                  "deprem senaryolarıyla risk yapısı\n"
                                  "değerlendirilmiştir.\n"
                                  "Dergiye aşajıdaki linkten \n"
                                  "ulaşabilirsiniz."),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => launch(
                            'http://dacd.artvin.edu.tr/tr/download/article-file/52691'),
                        child: Text(
                          "http://dacd.artvin.edu.tr/tr/download/article-file/52691",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
