import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class YedinciHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("National Geographic", style: TextStyle(color: Colors.white)),
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
                  image: AssetImage("images/foto7.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\t\t25 Nisan 2015'te Nepal'de meydana gelen 7,8 büyüklüğündeki bu deprem 1934'ten beri"
                  " ülkede yaşanan en şiddetli deprem oldu. Bu depremi ve etkilerini konu alan bu belgesel National Geographic "
                  "tarafından çekildi.\n\n \t\tAşağıdaki linkten ulaşabilirsiniz",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  child: Text(
                    "https://www.youtube.com/watch?v=GPcnNnDYlBE&t=50s",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  onTap: () => launch(
                      'https://www.youtube.com/watch?v=GPcnNnDYlBE&t=50s'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
