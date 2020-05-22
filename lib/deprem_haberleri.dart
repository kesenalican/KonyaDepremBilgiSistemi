import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DepremHaberleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Haberleri",
          style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Text(
                    "ANLIK DEPREM HABERLERİ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tFay hatları üzerinde bulunan ülkemizin çeşitli illerinden gelen sarsıntı haberleri ve "
                            "uzmanların öngörüleri nedeniyle panik olan vatandaşlar, son dakika deprem "
                            "haberlerini sık sık takip ediyor.\n\n"
                            "\t\t\tPeki, ‘Bugün deprem oldu mu, en son nerede ve kaç şiddetinde oldu, ne kadar derinde "
                            "oldu?’ gibi soruların cevabını aşağıdaki linke tıklayarak öğrenebilirsiniz.\n\n"
                            "\t\t*	Kandilli Rasathanesi ve Deprem Araştırma Enstitüsü"),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "http://www.koeri.boun.edu.tr/scripts/lst7.asp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    onTap: () => launch(
                        'http://www.koeri.boun.edu.tr/scripts/lst7.asp'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("images/haber1.jpg"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("images/haber2.jpg"),
                    ),
                  ),

                  SizedBox(height: 15,),
                  Text("*	Afet ve Acil Durum Yönetim Başkanlığı"),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("https://deprem.afad.gov.tr/",style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    onTap: () => launch ('https://deprem.afad.gov.tr/'),
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage("images/haber3.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("*	Maden Teknik ve Arama Genel Müdürlüğü"),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("http://yerbilimleri.mta.gov.tr/anasayfa.aspx",style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    onTap: () => launch ('http://yerbilimleri.mta.gov.tr/anasayfa.aspx'),
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage("images/haber4.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
