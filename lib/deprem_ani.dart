import 'package:flutter/material.dart';

class DepremAni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Anı",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Text(
                    "DEPREM ANINDA YAPILMASI GEREKENLER",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tDeprem anında panik yapmak,koşturmak yerine soğuk kanlı davranmak gerekiyor. Emin "
                        "adımlarla ne yapmanız gerektiğini bilerek davranmak sizin yararınıza olacaktır.\n",
                        style: TextStyle(fontSize: 15)),
                  ),
                  Text(
                    "\tDeprem Anında Bina İçerisindeyseniz;\n ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text("\tÖncelikle kesinlikle panik yapmayınız!\n",
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.lineThrough)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("images/an1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\t • Güvenli bir yer bulunuz ardından dizüstü ÇÖK, enseniz ve başınızı koruyacak şekilde "
                        "KAPAN,düşmemek için sabit bir yere TUTUN komutlarını uygulayınız.\n "
                        "• Sabitlenmemiş dolap, pencere ve raf benzeri eşyalardan uzak durunuz.\n "
                        "• Sağlam sandalyeler ile desteklenmiş bir masa altına veya varsa hacimli koltuk,kanepe "
                        "veyahut içi dolu sandık gibi koruma sağlayabilecek eşyalarınızın yanına çömelerek "
                        "hayat üçgeni oluşturmalısınız.\n"
                        "• Baş iki el arasına alınarak veya bir koruyucu (yastık, kitap vb.) malzeme ile "
                        "korunmalıdır. Sarsıntı geçene kadar bu pozisyonda bekleyiniz.\n"
                        "• Merdivenlere veya çıkışlara doğru koşmayınız,balkonlara yönelmeyiniz!\n"
                        "• Balkon ya da pencerelerden aşağıya atlamayınız!\n"
                        "• Kesinlikle asansörleri kullanmayınız.\n"
                        "• Telefonlerınızı acil durum veya yangın bildirmek dışında kullanmamalısınız.\n"
                        "• Çakmak,kibrit vb yakmayınız.\n"
                        "• Elektrik düğmelerine dokunmayınız.\n"
                        "• Tekerlekli sandalye kullanıyorsanız sandalyenin tekerleklerini kilitleyerek sabitleyiniz "
                        "ardından baş ve boyun bölgelerinizi korumaya alınız.\n"
                        "• Mutfak,laboratuar, imalathane gibi yerlerde depreme yakalanmanız durumunda "
                        "ocak, fırın, makine benzeri cihazlar kapatılarak dökülebilecek zarar verecek malzeme ve "
                        "maddelerden uzaklaşmalısınız.\n"
                        "• Güvenliğinizden emin olduktan sonra nefes alışverişinizi düzenleyerek sakinleşmeye "
                        "ve sakin kalmaya çalışınız,bulunduğunuz yerde sarsıntının geçmesini bekleyiniz.\n"
                        "• Sarsıntı geçtikten sonra elektrik, gaz ve su vanalarını kapatınız, soba ve ısıtıcıları söndürünüz.\n"
                        "• Diğer güvenlik önlemleri alınarak gerekli olan eşya ve malzemeler alınarak binayı "
                        "daha önce tespit edilen yoldan derhal terk ederek toplanma bölgesine gidiniz.\n"
                        "• Binayı terk ederken asansör yerine merdiven kullanmanız yararınıza olacaktır\n"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("images/an2.png"),
                  ),
                  Text(
                    "\tDEPREM ANINDA AÇIK ALANDAYSANIZ;\n ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "• Enerji hatları ve direklerinden, ağaçlardan, diğer binalardan ve duvar diplerinden uzak durunuz.\n "
                        "Açık arazide çömelerek etraftan gelen tehlikelere karşı hazırlıklı olmalısınız.\n"
                        "• Toprak kayması,taş ve kaya düşmesi gibi tehditlere sebep olucak yamaç altlarında bulunmayınız.\n"
                        "• Binalardan düşücek cam kırıkları,sıva,bacalara karşı tedbirli olunuz.\n"
                        "• Deniz kıyısından uzaklaşınız.\n"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("images/an3.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\tDEPREM ANINDA ARAÇ KULLANIYORSANIZ; \n ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "• Bulunduğunuz yer güvenli ise yolu kapatmadan sağa çekip,pencereler kapalı şekilde aracınızın "
                        "içerisinde sarsıntının geçmesini bekleyiniz.Beklerken kontak anahtarı yerinde bırakınız.\n"
                        "Sarsıntı geçtikten sonra açık alanlara ilerleyiniz.\n"
                        "• Meskun mahallerde veya güvenli olmayan (ağaç ya da enerji hatları veya direklerinin yanında, köprü "
                        "üstünde vb.) bir yerdeyken aracınızla depreme yakalandıysanız durun, kontak anahtarınızı bırakarak "
                        "terk ediniz ve trafikten uzak açık alanlara gidiniz.\n"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t- Sarsıntı sırasında bir tünelin içindeyseniz ve çıkışa yakın değilseniz; ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tAracınızı durdurup aşağıya inininiz. Aracınızın yanına yan yatarak ayaklarınızı karnınıza çekip "
                        "baş ve boyun bölgenizi ÇÖK-KAPAN-TUTUN komutlarıyla koruma altına alınız."),
                  ),
                  Text(
                    "\t- Kapalı bir otoparkta iseniz; ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tAracınızın dışına çıkarak, yanına yan yatınız ve ellerinizle baş,boyun bölgenizi koruyunuz. "
                        "Yukarıdan düşebilecek tavan tünel gibi büyük kitleler aracı belki ezecek ama yok etmeyecektir.\n"
                        "\t\t\tAraç içinde olduğunuz takdirde, aracın üzerine düşen bir parça ile aracın içinde ezilebilirsiniz."),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage("images/an4.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "METRODA VEYA DİĞER TOPLU TAŞIMA ARAÇLARINDAYSANIZ;",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "• Mecbur kalmadığınız sürece toplu taşıma araçlarını terk etmeyiniz.\n"
                                "Diğer hatlardan gelen metro veya tren size çarpabilir,elektrik akımına kapılabilirsiniz.\n"
                                "• Aracın içinde sarsıntının geçmesini bekleyiniz ve sıkıca tutturulmuş askı, "
                                "korkuluk veya herhangi bir yere tutunarak metro veya tren personeli tarafından "
                                "verilen talimatlara uyunuz."),
                          ),
                        ],
                      ),
                    ),
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
