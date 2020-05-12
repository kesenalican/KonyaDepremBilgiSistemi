import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IkinciHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2011 Japonya ve Tsunami",
            style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.orange.shade50,
          height: 800,
          width: 890,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  image: AssetImage("images/foto2.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\t\t\tDünyanın en büyük depremleri arasında yer alan 2011 yılı Japonya depremini"
                  " ve ardından gelen tsunamiyi konu alan bu belgesel, depremlerin oluşturabileceği felaketleri "
                  "gözler önüne seriyor.\n\t\tDeprem denilince akla ilk gelen ülke olan Japonya’nın depremlere karşı "
                  "aldığı üst düzey önlemleri ve bu önlemlerin önemini anlamamızı sağlayan bir belgeseldir.\n "
                  "\t\tAşağıda ki linkten ulaşabilirsiniz.\n",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  child: Text(
                    "https://www.youtube.com/watch?v=99LgG-Y1MZM",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  onTap: () =>
                      launch('https://www.youtube.com/watch?v=99LgG-Y1MZM'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
