import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ToplanmaAlanlari extends StatefulWidget {
  @override
  _ToplanmaAlanlariState createState() => _ToplanmaAlanlariState();
}

class _ToplanmaAlanlariState extends State<ToplanmaAlanlari> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(37.873214, 32.4898453);
  final Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _getLocation() async {
    var currentLocation = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId("curr_loc"),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(title: 'Konumunuz'),
      );
      _markers["Current Location"] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toplanma Alanları"),
          backgroundColor: Colors.orange,
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 9.0,
              ),
              markers: _createMarker(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: _getLocation,
                tooltip: 'Get Location',
                child: Icon(Icons.location_on),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
        markerId: MarkerId("markerKonum"),
        position: LatLng(37.872539, 32.492142),
        infoWindow: InfoWindow(title: "Konumunuz"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
      Marker(
        markerId: MarkerId("marker1"),
        position: LatLng(37.23891, 32.11795),
        infoWindow: InfoWindow(title: "Ahırlı Şehit Samet Bütün Ortaokulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker2"),
        position: LatLng(37.36438, 32.13154),
        infoWindow: InfoWindow(title: "Akkise Atatürk İlkokulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker3"),
        position: LatLng(37.4581, 32.3743),
        infoWindow: InfoWindow(title: "Arif Bilge Spor Tesisleri"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker4"),
        position: LatLng(37.45656, 32.36322),
        infoWindow: InfoWindow(
            title:
                "Şht. Jandarma Astsubay Çavuş Mehmet Tarlacı Parkı ve Spor Sahası"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker5"),
        position: LatLng(38.35981, 31.41518),
        infoWindow: InfoWindow(title: "Atatürk Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker6"),
        position: LatLng(38.35845, 31.41113),
        infoWindow: InfoWindow(title: "Belediye Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker7"),
        position: LatLng(38.35629, 31.41678),
        infoWindow: InfoWindow(title: "Nasreddin Hoca Gülmece Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker8"),
        position: LatLng(38.35298, 31.44118),
        infoWindow: InfoWindow(title: "Akşehir Spor Kompleksi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker9"),
        position: LatLng(38.3618, 31.4198),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker10"),
        position: LatLng(38.35904, 31.42625),
        infoWindow: InfoWindow(title: "Pazar Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker11"),
        position: LatLng(38.34829, 31.4152),
        infoWindow: InfoWindow(
            title: "Hıdırlık Parkı. Açıkhava Tiyatrosu  ve Komek Kurs Merkezi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker12"),
        position: LatLng(38.29965, 32.87806),
        infoWindow: InfoWindow(title: "Altınekin Toki Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker13"),
        position: LatLng(38.30955, 32.87136),
        infoWindow: InfoWindow(title: "Kale Hüyüğü Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker14"),
        position: LatLng(38.3034, 32.8609),
        infoWindow: InfoWindow(title: "Stadyum ve Kapalı Spor Salonu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker15"),
        position: LatLng(37.6694, 31.7347),
        infoWindow: InfoWindow(title: "Cumartesi Pazarı ve Çim Saha"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker16"),
        position: LatLng(37.68837, 31.71712),
        infoWindow: InfoWindow(title: "Kapalı Spor Salonu ve Eski Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker17"),
        position: LatLng(37.6772, 31.7191),
        infoWindow: InfoWindow(title: "Vuslat Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker18"),
        position: LatLng(37.18969, 32.2438),
        infoWindow: InfoWindow(title: "Kapalı Pazar Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker19"),
        position: LatLng(37.1937, 32.2553),
        infoWindow: InfoWindow(title: "Çim Saha"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker20"),
        position: LatLng(37.21491, 32.552),
        infoWindow:
            InfoWindow(title: "Büyükşehir Belediyesi Sarıoğlan Fen Işleri"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker21"),
        position: LatLng(37.19403, 32.22806),
        infoWindow:
            InfoWindow(title: "Bozkır Meslek Yüksekokulu ve Anadolu Lisesi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker22"),
        position: LatLng(38.65154, 32.93342),
        infoWindow: InfoWindow(title: "Kapalı Pazar ve Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker23"),
        position: LatLng(38.641, 32.9226),
        infoWindow: InfoWindow(title: "15 Temmuz Şehitler Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker24"),
        position: LatLng(39.0179, 31.7959),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker25"),
        position: LatLng(39.02666, 31.80026),
        infoWindow: InfoWindow(title: "Belediye Sosyal Tesisleri"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker26"),
        position: LatLng(37.57509, 32.77177),
        infoWindow: InfoWindow(title: "Dr.Devlet Bahçeli Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker27"),
        position: LatLng(37.57019, 32.77279),
        infoWindow: InfoWindow(title: "Durmuş Ali Çalık Şehir Stadyumu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker28"),
        position: LatLng(37.56589, 32.79535),
        infoWindow: InfoWindow(title: "R. Tayyip Erdoğan Spor Tesisi ve Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker29"),
        position: LatLng(37.57183, 32.7433),
        infoWindow: InfoWindow(title: "Sırçalı Mesire Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker30"),
        position: LatLng(38.01533, 32.01303),
        infoWindow: InfoWindow(title: "Kapalı Pazar ve Kültür Merkezi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker31"),
        position: LatLng(38.02071, 32.01885),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker32"),
        position: LatLng(37.39067, 31.50795),
        infoWindow: InfoWindow(title: "Şehit Hüseyin Albaşğil İ.Ö. Okulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker33"),
        position: LatLng(37.39789, 31.49925),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker34"),
        position: LatLng(38.14919, 31.67847),
        infoWindow: InfoWindow(title: "Doğanhisar Anadolu Lisesi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker35"),
        position: LatLng(38.1449, 31.67606),
        infoWindow: InfoWindow(title: "Halk Pazarı ve Otogar"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker36"),
        position: LatLng(38.15397, 31.66409),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker37"),
        position: LatLng(38.13163, 31.67235),
        infoWindow: InfoWindow(title: "Büyükşehir Doğanhisar Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker38"),
        position: LatLng(37.90155, 33.83591),
        infoWindow: InfoWindow(title: "Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker39"),
        position: LatLng(37.90253, 33.83578),
        infoWindow: InfoWindow(title: "Pazar Yeri ve Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker40"),
        position: LatLng(37.89178, 33.83662),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker41"),
        position: LatLng(38.03689, 33.93186),
        infoWindow: InfoWindow(title: "Demirci İlköğretim Okulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker42"),
        position: LatLng(37.51016, 34.05126),
        infoWindow: InfoWindow(title: "Yunus Emre ve 15 Temmuz Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker43"),
        position: LatLng(37.50371, 34.05147),
        infoWindow: InfoWindow(title: "Kwangjin Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker44"),
        position: LatLng(37.52452, 34.04443),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker45"),
        position: LatLng(37.50237, 34.04655),
        infoWindow: InfoWindow(title: "Pazar Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker46"),
        position: LatLng(37.4675, 34.05803),
        infoWindow: InfoWindow(title: "Üniversite Yerleşkesi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker47"),
        position: LatLng(37.53429, 34.06606),
        infoWindow: InfoWindow(title: "Atatürk Kültür Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker48"),
        position: LatLng(37.27044, 32.72847),
        infoWindow: InfoWindow(title: "Güneybağ İ.Ö.Okulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker49"),
        position: LatLng(37.31112, 32.72436),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker50"),
        position: LatLng(36.99022, 32.46542),
        infoWindow: InfoWindow(title: "Berika Parkı ve Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker51"),
        position: LatLng(36.97641, 32.43775),
        infoWindow: InfoWindow(title: "Futbol Sahası ve Kiraz Hali"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker52"),
        position: LatLng(37.44064, 34.19559),
        infoWindow: InfoWindow(title: "Toki Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker53"),
        position: LatLng(37.43484, 34.18537),
        infoWindow: InfoWindow(
            title: "Atatürk İ.Ö.O ve Arif Arık Çok Programlı Anadolu Lisesi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker54"),
        position: LatLng(37.94787, 31.59788),
        infoWindow: InfoWindow(title: "Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker55"),
        position: LatLng(37.9466, 31.59191),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker56"),
        position: LatLng(37.96144, 31.59748),
        infoWindow: InfoWindow(title: "Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker57"),
        position: LatLng(37.91706, 31.66867),
        infoWindow: InfoWindow(
            title: "İmrenler Mesleki Ve Teknik Anadolu Lisesi ve Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker58"),
        position: LatLng(38.28142, 31.91657),
        infoWindow: InfoWindow(title: "Lala Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker59"),
        position: LatLng(38.2759, 31.9012),
        infoWindow: InfoWindow(title: "İnönü İlköğretim Okulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker60"),
        position: LatLng(38.28411, 31.87866),
        infoWindow: InfoWindow(title: "Ahmet Ali Gezgin İlkokulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker61"),
        position: LatLng(38.2823, 31.8969),
        infoWindow: InfoWindow(title: "Kanal Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker62"),
        position: LatLng(38.2773, 31.9068),
        infoWindow: InfoWindow(title: "Fahrettin Altay Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker63"),
        position: LatLng(38.28365, 31.91661),
        infoWindow: InfoWindow(title: "Kapalı Halk Pazarı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker64"),
        position: LatLng(38.27532, 31.89205),
        infoWindow: InfoWindow(title: "Ilgın Stadyumu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker65"),
        position: LatLng(38.28787, 31.71765),
        infoWindow: InfoWindow(title: "Cumhuriyet İlköğretim Okulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker66"),
        position: LatLng(38.29192, 31.71323),
        infoWindow: InfoWindow(title: "Halk Pazarı ve Otogar"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker67"),
        position: LatLng(38.23778, 32.23130),
        infoWindow: InfoWindow(title: "Kültür Merkezi ve Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker68"),
        position: LatLng(38.24284, 32.20444),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker69"),
        position: LatLng(38.44457, 32.16577),
        infoWindow:
            InfoWindow(title: "Atlantı Cumhuriyet Ortaokulu ve Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker70"),
        position: LatLng(37.71650, 33.55632),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker71"),
        position: LatLng(37.71649, 33.51133),
        infoWindow: InfoWindow(title: "100. Yıl Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker72"),
        position: LatLng(37.71188, 33.54452),
        infoWindow: InfoWindow(title: "Ali Tepe Dinlenme Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker73"),
        position: LatLng(37.73010, 33.54960),
        infoWindow: InfoWindow(title: "A. Hamdi Mutlu Hatıra Ormanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker74"),
        position: LatLng(37.89900, 32.52837),
        infoWindow: InfoWindow(title: "Aşkar Höyüğü Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker75"),
        position: LatLng(37.90705, 32.52965),
        infoWindow: InfoWindow(title: "Şekerciler Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker76"),
        position: LatLng(37.87551, 32.53070),
        infoWindow: InfoWindow(title: "Muhsin Yazıcıoğlu Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker77"),
        position: LatLng(37.87014, 32.53394),
        infoWindow: InfoWindow(title: "B.Bld. Spor ve Kongre Merkezi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker78"),
        position: LatLng(37.86591, 32.54008),
        infoWindow: InfoWindow(title: "Adalet Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker79"),
        position: LatLng(37.86938, 32.51485),
        infoWindow: InfoWindow(title: "Mevlana Kültür Merkezi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker80"),
        position: LatLng(37.80824, 32.53746),
        infoWindow: InfoWindow(title: "Olimpiyat Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker81"),
        position: LatLng(37.87352, 32.55076),
        infoWindow: InfoWindow(title: "Karatay Şehir Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker82"),
        position: LatLng(39.09042, 33.07044),
        infoWindow: InfoWindow(title: "Olof Palme Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker83"),
        position: LatLng(39.09544, 33.08010),
        infoWindow: InfoWindow(title: "80.Yıl Cumhuriyet Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker84"),
        position: LatLng(39.09300, 33.08408),
        infoWindow: InfoWindow(title: "Kapalı Pazar Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker85"),
        position: LatLng(39.08875, 33.09024),
        infoWindow: InfoWindow(title: "Stadyum ve Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker86"),
        position: LatLng(37.87717, 32.45876),
        infoWindow: InfoWindow(title: "Şehit Erol Olçok parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker87"),
        position: LatLng(37.86539, 32.45542),
        infoWindow: InfoWindow(title: "Evliya Çelebi Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker88"),
        position: LatLng(37.74174, 32.40460),
        infoWindow: InfoWindow(title: "Gödene Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker89"),
        position: LatLng(37.84563, 32.44112),
        infoWindow: InfoWindow(title: "Berlika Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker90"),
        position: LatLng(37.80935, 32.51660),
        infoWindow: InfoWindow(title: "Karaaslan Hadimi Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker91"),
        position: LatLng(37.84974, 32.41820),
        infoWindow: InfoWindow(title: "Tavusbaba Parkı (Millet Parkı)"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker92"),
        position: LatLng(37.82221, 32.39693),
        infoWindow: InfoWindow(title: "Dutlu Kültür Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker93"),
        position: LatLng(38.26388, 32.39946),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker94"),
        position: LatLng(38.19167, 32.38194),
        infoWindow: InfoWindow(title: "Ladik Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker95"),
        position: LatLng(37.99448, 32.52665),
        infoWindow: InfoWindow(title: "Kardelen Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker96"),
        position: LatLng(37.89242, 32.47941),
        infoWindow: InfoWindow(title: "Salı Pazarı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker97"),
        position: LatLng(37.96223, 32.52368),
        infoWindow: InfoWindow(title: "M.T.A Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker98"),
        position: LatLng(37.97859, 32.51797),
        infoWindow: InfoWindow(title: "Japon Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker99"),
        position: LatLng(37.96183, 32.50644),
        infoWindow: InfoWindow(title: "Yazır Mahalle Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker100"),
        position: LatLng(37.95292, 32.52948),
        infoWindow: InfoWindow(title: "Sancaktepe Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker101"),
        position: LatLng(37.90117, 32.49934),
        infoWindow: InfoWindow(title: "Eski Sanayi Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker102"),
        position: LatLng(38.01107, 32.52977),
        infoWindow: InfoWindow(title: "Saray Bosna Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker103"),
        position: LatLng(37.88526, 32.46744),
        infoWindow:
            InfoWindow(title: "Ahmet Keleşoğlu Kültür Merkezi ve Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker104"),
        position: LatLng(37.95177, 32.50100),
        infoWindow: InfoWindow(title: "Kalehan-Ecdat parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker105"),
        position: LatLng(37.95950, 32.49324),
        infoWindow: InfoWindow(title: "Kanyon Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker106"),
        position: LatLng(37.87497, 32.48864),
        infoWindow: InfoWindow(title: "KültürPark"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker107"),
        position: LatLng(37.93047, 32.50006),
        infoWindow: InfoWindow(title: "Selahaddin Eyyubi Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker108"),
        position: LatLng(37.94955, 32.46314),
        infoWindow: InfoWindow(title: "Kelebekler Vadisi"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker109"),
        position: LatLng(37.95641, 32.55816),
        infoWindow: InfoWindow(title: "Türk Yıldızları Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker110"),
        position: LatLng(37.94485, 32.48460),
        infoWindow: InfoWindow(title: "Büyükşehir Stadyumu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker111"),
        position: LatLng(37.42489, 31.84808),
        infoWindow: InfoWindow(title: "Belediye Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker112"),
        position: LatLng(37.42185, 31.85416),
        infoWindow: InfoWindow(
            title: "Gaziler ve Şehitler Parkı ile Necip Fazıl Kısakürek Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker113"),
        position: LatLng(37.42114, 31.84300),
        infoWindow: InfoWindow(title: "Kapalı Pazar Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker114"),
        position: LatLng(37.39182, 31.84135),
        infoWindow: InfoWindow(title: "Kuğulu Park Mesire Yeri"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker115"),
        position: LatLng(36.92759, 32.49454),
        infoWindow: InfoWindow(title: "Belediye Garajı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker116"),
        position: LatLng(36.91073, 32.49767),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker117"),
        position: LatLng(36.88631, 32.68397),
        infoWindow: InfoWindow(title: "Balcılar Halı Saha Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker118"),
        position: LatLng(38.47458, 31.62781),
        infoWindow: InfoWindow(title: "Şehit Birol Parkı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker119"),
        position: LatLng(38.47376, 31.62866),
        infoWindow: InfoWindow(title: "Tuzlukçu İlköğretim Okulu"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker120"),
        position: LatLng(38.47008, 31.63480),
        infoWindow: InfoWindow(title: "Stadyum"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker121"),
        position: LatLng(37.29737, 32.08395),
        infoWindow: InfoWindow(title: "Belediye Parkı ve Garaj"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker122"),
        position: LatLng(38.81414, 31.72888),
        infoWindow: InfoWindow(title: "Park"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker123"),
        position: LatLng(38.81377, 31.73228),
        infoWindow: InfoWindow(title: "Halk Pazarı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker124"),
        position: LatLng(38.81212, 31.73616),
        infoWindow: InfoWindow(title: "Yeşil Alan ve Fidanlık"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      Marker(
        markerId: MarkerId("marker125"),
        position: LatLng(38.82275, 31.72153),
        infoWindow: InfoWindow(title: "Mesire Alanı"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
    ].toSet();
  }
}
