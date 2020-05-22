import 'package:debisapp/akademik_calismalar.dart';
import 'package:debisapp/deprem_ani.dart';
import 'package:debisapp/deprem_belgeselleri.dart';
import 'package:debisapp/deprem_cantasi.dart';
import 'package:debisapp/deprem_haberleri.dart';
import 'package:debisapp/fay_hatlari.dart';
import 'package:debisapp/toplanma_alanlari.dart';
import 'package:flutter/material.dart';
import 'deprem_dergi.dart';
import 'deprem_oncesi.dart';
import 'deprem_sonu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      title: "Deprem Bilgi Sistemi",
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anasayfa",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("KON-Debis",style: TextStyle(color: Colors.white),),
              accountEmail: Text("Konya Deprem Bilgi Sistemi",style: TextStyle(color: Colors.white),),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://img.gazetevatan.com/vatanmediafile/Haber598x362/2019/11/05/turkiye-de-deprem-cesitleri-nelerdir-artcilar-buy-4279676.Jpeg")
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ToplanmaAlanlari()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.map),
                      title: Text("Toplanma Alanları"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepremCantasi()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.account_balance_wallet),
                      title: Text("Deprem Çantası"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepremOncesi()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.settings_backup_restore),
                      title: Text("Deprem Öncesi Hazırlık"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DepremAni()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.supervised_user_circle),
                      title: Text("Deprem Anı"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepremSonu()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.forward),
                      title: Text("Deprem Sonrası"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepremHaberleri()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.comment),
                      title: Text("Deprem Haberleri"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepremBelgeselleri()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.broken_image),
                      title: Text("Deprem Belgeselleri"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepremDergi()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.library_books),
                      title: Text("Deprem Konu Alan Dergiler"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AkademikCalismalar()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.mode_edit),
                      title: Text("Akademik Makaleler"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FayHatlari()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.linear_scale),
                      title: Text("Fay Hatları"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text("KON-Debis'e Hoşgeldiniz!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("images/logo1.png"),
              ),
            ),
            Text(
              "\t\t\tKonya Deprem Bilgilendirme Sistemi sizin depreme karşı hazırlıklı olmanızı sağlar.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
