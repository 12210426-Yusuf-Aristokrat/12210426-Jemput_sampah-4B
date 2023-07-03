import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/beranda_view.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/map_view_geo.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/profil_view.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/settings_view.dart';
import 'package:provider/provider.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/provider/map.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    MapView(
      onLocationSelected: (latLng) {
        // Aksi yang ingin Anda lakukan ketika lokasi dipilih
        print('Location selected: $latLng');
      },
    ),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
