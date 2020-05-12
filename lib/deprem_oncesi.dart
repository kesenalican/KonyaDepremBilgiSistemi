import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DepremOncesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Öncesi Hazırlık",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "DEPREM ÖNCESİ ALINMASI GEREKEN ÖNLEMLERİ BİLİYOR MUSUNUZ?\n",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "• Yerleşim bölgeleri titizlikle belirlenmelidir. Kaygan ve ovalık bölgeler yerleşime uygun "
                            "değildir. Konutlar gevşek toprağa meyilli arazilere yapılmamalıdır.\n"
                            "• Yapılar depremin getireceği felaketlere karşı dayanıklı inşa edilmelidir. (Yapı "
                            "Tekniğine ve İnşaat Yönetmeliğine uygun olarak)\n"
                            "• İmar planında belirlenmiş konut yapmaya uygun olan yerler dışındaki yerlere ev ve bina "
                            "yapılmamalıdır.\n"
                            "• Uçurum kıyılarına, dik boğaz ve vadilerin içine bina yapılmamalıdır.\n"
                            "• Çok kar yağan ve çığ düşme tehlikesi olan yamaçlara bina yapılmamalıdır.\n"
                            "• Mevcut binaların dayanıklılıkları artırılmalı herhangi bir afete hazır hale getirilmelidir.\n"
                            "• Konutlara deprem sigortası yaptırılmalıdır\n\n"
                            "\t\t\t\tBu önlemlerin yanı sıra, yapısal olmayan, yani binadan değil de eşyalardan kaynaklanacak "
                            "hasarlardan korunmak için günlük kullandığımız eşyalarımızın ev içerisine yerleştirilmesinde "
                            "aşağıda belirtilen önlemleri almalıyız:\n\n"
                            "• Dolap üzerine konulan eşya ve büro malzemelerin kayarak düşmelerini engellemek için "
                            "plastik tutucu malzeme veya yapıştırıcılarla sabitlenmesi gerekir.\n"
                            "• Soba ve diğer ısıtıcılar sağlam malzemelerle duvara veya yere sabitlenmelidir.\n"
                            "• Dolaplar ve devrilebilecek benzeri eşyalar birbirine ve duvara sabitlenmelidir.\n"),
                      ),
                      Image(
                        image: AssetImage("images/on1.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "• Tavan ve duvara asılan avize, klima vb. cihazlar bulundukları yere ağırlıklarını "
                            "taşıyacak şekilde, duvar ve pencerelerden yeterince uzağa ve kanca ile asılmalıdır.\n"
                            "• İçinde ağır eşyalar bulunan dolap kapakları mekanik kilitler takılarak sıkıca kapalı "
                            "kalmaları sağlanmalıdır.\n"
                            "• Tezgah üzerindeki kayabilecek beyaz eşyaların altına metal profil koyarak bunların "
                            "kayması önlenmelidir.\n"
                            "• Zehirli, patlayıcı, yanıcı maddeler düşmeyecek bir konumda sabitlenmeli ve "
                            "kırılmayacak bir şekilde depolanmalıdır. Bu maddelerin üzerlerine göze çarpıcı etiketler konulmalıdır.\n"
                            "• Küçük nesneler ve şişeler, birbirlerine çarpmayacak ve devrilmeyecek şekilde, kutuların içine yerleştirilmelidir.\n"
                            "• Gaz kaçağı ve yangına karşı, gaz vanası ve elektrik sigortaları otomatik hale getirilmelidir.\n"
                            "• Binadan acilen çıkmak için kullanılacak yollardaki tehlikeler ortadan kaldırılmalı, bu "
                            "yollar işaretlenmeli, çıkışı engelleyebilecek eşyalar çıkış yolu üzerinden kaldırılmalıdır.\n"
                            "• Geniş çıkış yolları oluşturulmalıdır. Dışa doğru açılan kapılar kullanılmalı, acil çıkış "
                            "kapıları kilitli olmamalıdır. Acil çıkışlar aydınlatılmalıdır.\n"
                            "• Karyolalar pencerenin ve üzerine devrilebilecek ağır dolapların yanına konulmamalı, "
                            "karyolanın üzerinde ağır eşya olan raf bulundurulmamalıdır.\n"
                            "• Tüm bireylerin katılımı ile (evde, iş yerinde, apartmanda, okulda) 'Afete hazırlık "
                            "planları' yapılmalı, her altı ayda bir bu plan gözden geçirilmelidir. Zaman zaman bu "
                            "plana göre nasıl davranılması gerektiğinin tatbikatları yapılmalıdır.\n"
                            "• Bir afet ve acil durumda eve ulaşılamayacak durumlar için aile bireyleri ile iletişimin "
                            "nasıl sağlanacağı, alternatif buluşma yerleri belirlenmelidir.\n"
                            "• Önemli evraklar (kimlik kartları, tapu, sigorta belgeleri, sağlık karnesi, diplomalar, "
                            "pasaport, banka cüzdanı vb.) kopyaları hazırlanarak su geçirmeyecek bir şekilde "
                            "saklanmalı, ayrıca bu evrakların bir örneği de bölge dışı bağlantı kişisinde bulunmalıdır.\n"
                            "• Yangın söndürme cihazı mutlaka bulundurulmalı ve periyodik bakımları da yaptırılmalıdır. Bu cihazlar;\n\n"
                            " Kolayca ulaşılabilecek bir yerde tutulmalıdır.\n"
                            " Yeri herkes tarafından bilinmelidir.\n"
                            " Duvara sıkıca sabitlenmelidir.\n"
                            " Her yıl ilgili firma tarafından bakımı yapılmalıdır.\n"
                            " Bir kez kullanıldıktan sonra mutlaka tekrar doldurulmalıdır.\n"
                            "	Binalarda asansörlerin kapı yanlarına 'Deprem Sırasında Kullanılmaz' levhası asılmalıdır.\n\n"
                            "• Deprem çantası mutlaka hazırlanmalı"
                            ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage("images/on2.jpg"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "• Aynı zamanda deprem öncesi alınması gereken önlemleri aşağıdaki linkten izleyebilirsiniz.\n"),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "https://www.youtube.com/watch?v=K9Es4ECMny0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=K9Es4ECMny0'),
                      ),
                    ],
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
