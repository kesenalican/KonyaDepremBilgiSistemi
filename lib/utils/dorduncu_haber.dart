import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class DorduncuHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("17 Ağustos 1999 Depremi",
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
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: AssetImage("images/foto4.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\t\tTürkiye’nin en acı olayları arasında yer alan 1999 Depremi’nde enkaz altında kalan,"
                  " evlerini yakınlarını kaybeden depremzedelerin, o an yaşadıklarını ve depremle değişen hayatlarını konu alan bir belgeseldir.\n\n"
                  "\t\tAşağıdaki linkten ulaşabilirsiniz.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  child: Text(
                    "https://www.youtube.com/watch?v=SYzs1TaxRxY",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  onTap: () =>
                      launch('https://www.youtube.com/watch?v=SYzs1TaxRxY'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
