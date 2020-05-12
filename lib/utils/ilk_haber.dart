import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IlkHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Büyük Felaketler",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.orange.shade50,
            height: 800,
            width: 890,
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage("images/foto1.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "\n\t\t\tGünümüzün önemli depremlerini anlatmayı amaçlayan bu \tbelgesel,"
                    " depremlerin vereceği hasarlar üzerine yapılan araştırmalar ve deneylerden de bahsetmektedir.\n"
                    " \tYaşanan deprem felaketlerini ve o anlarda yaşananları adım adım anlatan, bilgilendirici ve insanları önlem almaya teşvik edici bir belgeseldir."
                    " Aşağıdaki linkten ulaşabilirsiniz.\n\n"
                    "\t\t\t",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: InkWell(
                    child: Text(
                      "https://www.youtube.com/watch?v=VOb_CxulKKk",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    onTap: () =>
                        launch('https://www.youtube.com/watch?v=VOb_CxulKKk'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
