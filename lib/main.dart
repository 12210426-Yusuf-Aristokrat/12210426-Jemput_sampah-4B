// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/login_view.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/provider/LoginProvider.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/provider/map.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MapProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        // tambahkan provider lain jika diperlukan
      ],
      child: Builder(
        builder: (context) {
          context.read<MapProvider>().mulai_bacalokasi();
          return MaterialApp(
            home:LoginPage(),
          );
        },
      ),
    ),
  );
}