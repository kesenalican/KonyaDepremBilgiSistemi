import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AkademikCalismalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Akademik Makaleler",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: Column(
                children: <Widget>[
                  Text(
                    "1-) Afet ve Acil Durumlarda Halkın Toplanma Alanlarının Kullanılabilirliğini Belirleyen Kriterler ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\t\tKentsel yerleşmeleri afetlere karşı savunmasız hale getiren en önemli hususlardan biri de,"
                      "yerleşik alan içerisinde yoğun yapılaşmadan dolayı kentsel boşluk oranlarının azalmış olmasıdır."
                      "Halbuki kentsel mekanda bulunan bu boşluklar; afet yönetiminin toplanma, tahliye, acil yardım "
                      "ve çadır alanlarının oluşturulması gibi mekânsal gereksinimleri karşılamaya yönelik pek çok işleve hizmet edebilecek niteliktedir.\n"
                      "\t\t\tBu çalışmanın amacı, halkın toplanma alanlarına ilişkin değişkenlerin özelliklerini ve"
                      " etkilerini belirlemeyi ve tanımlamayı kapsamaktadır. "
                      "Bu çalışmayla birlikte belirlenen değişkenler çerçevesinde uygun toplanma alanlarının belirlenmesinde dikkat edilmesi gereken nitelikler ortaya konmuştur. "
                      "Aşağıdaki linkten makaleye ulaşabilirsiniz.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "[PDF] researchgate.net",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    onTap: () => launch('[PDF] researchgate.net'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: Column(
                children: <Widget>[
                  Text(
                    "2-) Ülkemizde Yeşil Alanların Afet Sonrası Toplanma Alanı Olarak Kullanılma Olanaklarının Artırılması Üzerine Bir Araştırma",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\t  1999 yılı Gölcük ve 2011 yılı Van depremleri sonrası yaşanılanlar, yeşil alanların toplanma "
                        "alanı olarak kullanımına yönelik tasarlanması ihtiyacını doğurmuştur.\n"
                        "\t\t\tBu çalışmada afet sonrası toplanma alanı olarak yeşil alanlardan yararlanılma imkanları"
                        " araştırılarak ve dünyadaki başarılı örnekler irdelenerek ülkemizdeki yeşil alanların afet"
                        " sonrası toplanma alanı olarak kullanılma olanaklarının artırılmasına yönelik öneriler geliştirilmiştir.\n"
                        "Aşağıdaki linkten makaleye ulaşabilirsiniz."),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "http://www.tdmd.org.tr/TR/Genel/4UDMSK/pdf2017/3843.pdf",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    onTap: () => launch(
                        'http://www.tdmd.org.tr/TR/Genel/4UDMSK/pdf2017/3843.pdf'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: Column(
                children: <Widget>[
                  Text(
                    "3-) Kentiçi Yol Kademelenmesinin Afet Durumunda Toplanma Alanlarının Erişilebilirliğine Etkisi Açısından İrdelenmesi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tYollar ve yol ağları afet durumunda hem halk hem de afet müdahale ekipleri açısından önemli bir yere sahiptir. "
                        "Afet ve acil durumlarda ihtiyaç duyulan hizmetler yollar aracılığı ile yapılmaktadır. "
                        "Özellikle ilk 72 saat afet ve acil durumlarda ihtiyaç duyulan hizmetlerin toplanma alanları"
                        "aracılığıyla verilmesi için bu alanların erişilebilirliği büyük önem taşımaktadır. "
                        "Bu çalışmada mevcut toplanma alanlarının yol kademelenmesi ile olan ilişkisi ve örnek "
                        "seçilen alanlarda yol kademelenmesi ve yol genişliği ile bina yüksekliği üzerinden "
                        "erişilebilirliği değerlendirilmektedir. Aşağıdaki linkten makaleye ulaşabilirsiniz.\n"),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "http://www.ishad.info/PastConferences/ISHAD2018/ISHAD2018/papers/A1.2-ISHAD2018ID118.pdf",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    onTap: () => launch(
                        'http://www.ishad.info/PastConferences/ISHAD2018/ISHAD2018/papers/A1.2-ISHAD2018ID118.pdf'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: Column(
                children: <Widget>[
                  Text(
                    "4-) Afet ve Acil Durumlarda Toplanma Alanlarının Yönetimi:Tasarım ve Sistematik Yaklaşımlar",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tAfet ve acil durumlarda hem halkın hem de acil müdahale ekiplerinin yönlendirilmesi için "
                        "sistematik bir yaklaşıma ihtiyaç vardır. Afet öncesinde, afet sırasında ve sonrasında özellikle "
                        "toplanma alanları, halkın güvenli toplanacağı alanlar olarak belirlenmiştir. Bu araştırmada "
                        "dünyada ve Türkiye’de afet ve acil durum yönetimine ilişkin mevcut iletişim biçimleri; "
                        "mevcut yönlendirme standartları analiz edilmiştir. Aşağıdaki linkten makaleye ulaşabilirsiniz.\n"),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "http://www.ishad.info/PastConferences/ISHAD2018/ISHAD2018/Allpapers/A1.2-ISHAD2018ID115.htm",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    onTap: () => launch(
                        'http://www.ishad.info/PastConferences/ISHAD2018/ISHAD2018/Allpapers/A1.2-ISHAD2018ID115.htm'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: Column(
                children: <Widget>[
                  Text(
                    "5-) Bilişim Sistemleri Kullanılarak Afet Direnci Artırılabilir mi?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tBilgi ve iletişim sistemleri kullanımı afet yönetim sistemi için daha kolay bilgi üretimini "
                        "sağlamaktadır. Mobil tabanlı teknolojiler afet dirençliliğini artırmak için ihtiyaçların "
                        "sağlanmasında kullanılır. Bu teknolojilerin afet sonrası kullanıcılar tarafından kullanılması "
                        "afete karşı direnci artırmaktadır. Bu çalışmanın amacı, vatandaşların mobil teknolojileri "
                        "kullanarak afet yönetiminde daha etkin ve bilinçli olmasını sağlamaktır. "
                        "Aşağıdaki linkten makaleye ulaşabilirsiniz.\n"),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "http://www.tdmd.org.tr/TR/Genel/4UDMSK/pdf2017/3879.pdf",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    onTap: () => launch(
                        'http://www.tdmd.org.tr/TR/Genel/4UDMSK/pdf2017/3879.pdf'),
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
