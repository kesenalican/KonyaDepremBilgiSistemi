import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AltinciHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DW Türkiye", style: TextStyle(color: Colors.white)),
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
                  image: AssetImage("images/foto6.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\t\tYerkabuğunu oluşturan plakaların birbirlerine göre olan hareketlerini kısa ama öz bir şekilde anlatarak,"
                  " depremlerin oluşma sebeplerini görseller ile açıklayan, kısa bir belgeseldir.\n\n"
                  " \t\tAşağıdaki linkten ulaşabilirsiniz.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  child: Text(
                    "https://www.youtube.com/watch?v=yMMnhRdzIqM&t=79s",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  onTap: () => launch(
                      'https://www.youtube.com/watch?v=yMMnhRdzIqM&t=79s'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
