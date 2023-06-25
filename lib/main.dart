import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/home_view.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/provider/map.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MapProvider()),
        // tambahkan provider lain jika diperlukan
      ],
      child: Builder(
        builder: (context) {
          context.read<MapProvider>().mulai_bacalokasi();
          return MaterialApp(
            home: Navbar(),
          );
        },
      ),
    ),
  );
}