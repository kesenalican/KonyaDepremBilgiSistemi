import 'package:flutter/material.dart';

class FayHatlari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fay Hatları",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Fay Hattı Nedir?  Deprem Oluşumuna Nasıl Sebep Olur?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\t Yer kabuğu birçok levhadan oluşmaktadır ve bu levhalar sürekli hareket halindedirler. "
                              "Levhaların hareketleri sonucu oluşan gerilme ve sıkışmalar, yer kabuğunun bazı bölümlerinde "
                              "yüzyıllar boyunca enerji birikmesine sebep olur. Bu enerjiler zaman zaman ortaya çıkar. Yer "
                              "kabuğundaki bu hareketli kesimlere ‘fay’ adı verilir.\n"),
                        ),
                        Image(
                          image: AssetImage("images/fay1.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\tBirbirlerinin hareketini engelleyen levhalar arasında sürtünme başlar. Levhaların birbirlerine "
                              "sürtünmesi sırasında, büyük kaya kütlelerinin arasında kalan fay hatları zorlanırlar. Zorlanma "
                              "ve sürtünmenin etkisiyle kısa bir zaman içerisinde çok şiddetli bir kırılma ve hareket ortaya "
                              "çıkar. Oluşan ilk harekete ‘deprem’ , şiddetli sarsıntının etkisiyle o bölgedeki yer kabuğunun "
                              "zayıf diğer kısımlarının kırılmasına da ‘artçı depremler’ denir.\n"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Türkiye’de ki Fay Hattı Durumu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\tTürkiye geniş açıdan bakıldığında, Kuzey Anadolu Fay Hattı, Doğu Anadolu Fay Hattı ve "
                              "içerisinde birçok fayı barındıran Batı Anadolu Fay Hattı olmak üzere 3 hattın üzerinde yer almaktadır.\n"),
                        ),
                        Text(
                          "• Kuzey Anadolu Fay Hattı (KAF):",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\tSaroz Körfezi'nden başlayarak, Marmara Denizi, Sapanca Gölü, Adapazarı, Tosya ve "
                              "Erzincan üzerinden Van Gölü kuzeyine kadar uzanan bir faydır. Tek bir fay hattından değil "
                              "birçok parçadan oluşmaktadır. Dünyanın en hızlı hareket eden ve en aktif faylarından biridir.\n\n"
                              "Anadolu Levhası'nın, Arap Levhası ve Avrasya Levhası'nın arasında kalması ve bu sıkışma "
                              "ile batıya doğru açılma şeklinde hareket etmesi sebebiyle yüksek sismik aktivite göstermektedir.\n"),
                        ),
                        Text(
                          "• Doğu Anadolu Fay Hattı (DAF):",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\tHatay’dan başlayarak, Kahramanmaraş, Adıyaman, Malatya, Elazığ ve Bingöl'e kadar "
                              "uzanan bir fay hattıdır. Karlıova Üçlü Bitişme'sinde sona ererek Kuzey Anadolu Fay Hattı ile birleşir.\n"),
                        ),
                        Text(
                          "• Batı Anadolu Fay Hattı (BAF): ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\t Anadolu'nun batısında olan doğu-batı uzanışlı bu fay, içerisinde birçok fay bulundurur. Bu "
                              "faylar; Fethiye-Burdur, Gökova grabeni, Knidos, Büyük Menderes Grabeni, Yavansu, Küçük "
                              "Menderes, Gediz Grabeni, Simav Grabeni ve Eskişehir faylarıdır.\n"),
                        ),
                        Image(
                          image: AssetImage("images/fay2.jpg"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "AFAD Türkiye Fay Hattı Haritası ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "\t\t\tTürkiye fay hattı haritası, AFAD tarafından kamuoyunu bilgilendirmek amacıyla erişime "
                              "açıldı. Harita ile Türkiye'deki fay hatları inceleyip, deprem tehlikesine ne kadar yakın "
                              "olduğunuzu görebilirsiniz.\n"),
                        ),
                        Image(
                          image: AssetImage("images/fay3.jpg"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
