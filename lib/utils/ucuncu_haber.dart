import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UcuncuHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilim Belgeseli", style: TextStyle(color: Colors.white)),
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
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: AssetImage("images/foto3.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\t\tBu belgesel depremlerin oluşma nedenlerini, görseller ile destekleyerek yalın bir dille anlatmaktadır.\n"
                  "\t\tTürkiye’nin deprem durumunu incelemek amacıyla, daha önceden meydana gelen depremler hakkında bilgiler sunuyor.\n"
                  " Aşağıdaki linkten ulaşabilirsiniz.\n",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  child: Text(
                    "https://www.youtube.com/watch?v=ADgRvCArjd0",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  onTap: () =>
                      launch('https://www.youtube.com/watch?v=ADgRvCArjd0'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
