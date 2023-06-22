import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/beranda_view.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/home_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.newspaper),
            label: 'Berita'
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gear),
            label: 'Pengaturan'
          ),
        ],
      ),
      body: Stack(
        children: [
          _BackgroundDashboard(),
          _InformasiPengguna(),
          Card(
            margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Jemput Sampah',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    _ListBerita(),
                    Wrap(
                      children: [
                        _TombolMenu(gambar: 'assets/Icon1.png'),
                        _TombolMenu(gambar: 'assets/Icon2.png'),
                        _TombolMenu(gambar: 'assets/Icon3.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return scaffold;
  }
  
  _InformasiPengguna() {}
}

class _BackgroundDashboard {
}

class _TombolMenu extends StatelessWidget {
  final String gambar;

  const _TombolMenu({required Key key, this.gambar = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.all(8),
      child: Image.asset(
        gambar,
        width: 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 227, 196, 96),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(33, 227, 196, 96),
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
    );
  }
}

class _ListBerita extends StatelessWidget {
  const _ListBerita({required Key super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _ItemBerita(assetgambar: 'assets/berita1.png'),
          _ItemBerita(assetgambar: 'assets/berita2.png'),
          _ItemBerita(assetgambar: 'assets/berita3.png'),
        ],
      ),
    );
  }
}

