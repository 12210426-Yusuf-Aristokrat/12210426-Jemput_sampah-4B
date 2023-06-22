import 'dart:js';

import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/provider/list_data';
import 'package:provider/provider.dart';


void main(List<String> args) {
  runApp(ChangeNotifierProvider<ListData>(create: (context)->));
}



// cara mengambil data
// context.read<ListData>().ambilData();