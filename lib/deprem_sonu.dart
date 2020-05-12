import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DepremSonu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Sonrası Yapılması Gerekenler",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\t\t\tDepremler  beklenmedik zamanlarda yaşanan ve gerekli önlemler alınmadığı takdirde "
                        "büyük ölçüde can ve mal kaybına sebep olan doğal afetlerdir. Depremlere karşı alınabilecek "
                        "çeşitli tedbirler olmakla beraber bu konuyla ilgili yeterince bilinçli bir toplum olabilmek de "
                        "büyük önem teşkil etmektedir.\n\n"
                        "\t\t\tAniden gelişebilecek bir depreme karşı sizin ve sevdikleriniz için ön hazırlık yapmanız olası "
                        "bir felaketten  en az zararla kurtulmanızı sağlayabilir.\n"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "• Bir haftasonu ailenizle beraber yarım saatinizi ayırarak deprem öncesi, deprem "
                      "anında ve tabiî ki depremden sonra yapılması gerekenleri gözden geçirip "
                      "“yapılacaklar listesi” gibi düşünerek hareket etmeniz sizin yararınıza olacaktır.\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "DEPREMDEN SONRA YAPILMASI GEREKENLER",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Kapalı Alandaysanız;\n\n"
                        "• Öncelikle kendi emniyetinizden emin olunuz sonrasında çevrenizde yardım "
                        "edebileceğiniz biri olup olmadığını kontrol ediniz.\n"
                        "• Varsa şöminenizi,beyaz eşyalarınızı,su tesisatlarınızı ve elektrik hatlarınızı kontrol ediniz.\n"
                        "• Depremden sonra en çok yaşanan ikincil felaketler yangınlardır bundan dolayı "
                        "eğer gaz kokusu alırsanız gaz vanasını kapatınız,cam ve kapıları açarak "
                        "mümkünse hemen binayı terk ediniz.\n"
                        "• Yere dökülmüş olan ilaç benzeri tehlikeli maddeleri temizleyiniz.\n"
                        "• Yerinden oynayan telefon ahizelerinin yerine yerleştiriniz.\n"
                        "• Deprem çantanızı yanınıza alarak en yakındaki toplanma alanlarına doğru harekete geçiniz.\n"
                        "• Radyo ve televizyon benzeri kitle iletişim araçlarında yapılacak uyarıları dinleyiniz.\n"
                        "• Cadde ve sokakları acil durum araçları için boş bırakınız.\n"
                        ""),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("images/son1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "• Yaralı insanlara yardım etmeye çalışınız. Ağır yaralı insanları yerinden fazla "
                        "oynatmamaya çalışınız ve yardım için bekleyiniz, fakat acil bir durum söz "
                        "konusuysa onları kurtarabilirsiniz (örneğin o esna bir çökme yaşanabilir ve kişiyi kurtarmanız gerekebilir).\n"
                        "• Ana depremlerin ardından mutlaka artçı depremler yaşanır. Zamanla "
                        "seyrekleşen ve şiddeti azalacak olan artçı depremler dayanıksız binalarda "
                        "hasara yol açabilir. Güvenliğiniz için sarsıntılar tamamen sona erene kadar "
                        "binalara girmeyiniz ve artçı depremler sırasında da ana depremlerde yapılması "
                        "gerekenleri yapınız. Sarsıntılar  ana  depremden sonraki ilk saatler, günler, "
                        "haftalar ve hatta aylar içerisinde bile yaşanabilir.\n\n"
                        "Açık Alandaysanız; \n"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("images/son2.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "• Denize yakın bir yerde yaşıyorsanız oluşabilecek olası tsunamilere karşı dikkat ediniz ve uzaklaşınız.\n"
                        "• Telefonunuzu yalnızca acil durumlarda kullanınız. Telefon hatları yerine "
                        "Telegram, Twitter, Whatsapp benzeri internet araçlarını kullanınız.\n"
                        "• Olabildiğince enerji nakil hatları ve hasar görmüş binalardan uzak durunuz.\n"
                        "• Önce yakın çevrenizde acil yardıma gerek duyanlara yardım ediniz.\n"
                        "• Yardım çalışmalarına katılarak özel durumlu yaşlı, hamile, engelli vb afatzadelere yardımcı olunuz.\n"
                        "• Aracınızı kullanırken dikkat ediniz ve eğer geceyse sokak ışıklarının sönme olasılığını göz önünde bulundurunuz.\n"
                        "• Çevrenizdeki hasarlara dikkat ederek not etmeye çalışın ve önceden sizin için belirlenmiş en yakın toplanma alanına gidiniz.\n\n"
                        "Yıkıntı Altında Mahsur Kaldıysanız;\n"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "• Paniklemeden durumunuzu kontrol ediniz! Enerjinizi tasarruflu kullanabilmek "
                        "için hareketlerinizi kontrol altında tutunuz.\n"
                        "• Hareket etmeniz kısıtlıysa hayatınızı riske atıcak davranışlarda bulunmayınız.\n"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Biliniz ki kurtarma ekipleri en kısa zamanda size ulaşmak için çaba gösterecektir!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("images/son3.png"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("• El ve ayaklarınızı hareket ettirebiliyorsanız sesinizi duyurmak için su, "
                        "kalorifer, gaz tesisatlarına, zemine vurarak varlığınızı belli ediniz.\n"
                        "• Sesinizi kullanabiliyorsanız yardım ekiplerine sesinizi duyurmaya çalışın ve "
                        "ekiplerin seslerini dinleyiniz fakat bu aşamada enerjinizi tasarruflu kullanmaya çalışınız.\n\n"
                        "• Aynı zamanda AFAD’ın hazırlamış olduğu deprem sonrasında yapılması gerekenleri "
                        "kısaca özetleyen videoya aşağıdaki linkten ulaşabilirsiniz.\n"),
                  ),
                  InkWell(
                    onTap: ()=>launch('https://youtu.be/VM_BAnp_YmI'),
                    child: Text("https://youtu.be/VM_BAnp_YmI ",style: TextStyle(fontWeight: FontWeight.bold),),
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
