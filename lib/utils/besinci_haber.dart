import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BesinciHaber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BBC News", style: TextStyle(color: Colors.white)),
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
                  image: AssetImage("images/foto5.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\t\t17 Ağustos 1999 depreminde fay hattının geçtiği ve çok büyük yıkımlara neden olduğu yerlerden biri"
                  " olan Gölcük’ün Değirmendere beldesiydi. Bu belgeselde depremi orada yaşamış olan emekli gazeteci Zeki"
                  " Tosun’un anlatımıyla deprem anını ve ileri 20 yıl boyunca yaşanan etkileri izliyoruz.\n\n"
                  "Bu kaliteli yapıma aşağıdaki linkten ulaşabilirsiniz.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  child: Text(
                    "https://www.youtube.com/watch?v=mSfVkvafIp0",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  onTap: () =>
                      launch('https://www.youtube.com/watch?v=mSfVkvafIp0'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
