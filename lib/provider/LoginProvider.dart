
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/konstanta.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/models/user_model.dart';
import 'package:http/http.dart' as http;

class LoginProvider with ChangeNotifier{
  bool loading = false;
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  UserModel? user;

  Future<Map> login()async{

    loading = true;
    notifyListeners();
    final url = Uri.parse(API.nodeLogin);
    Map result = {'code':0,'message':'tidak terhubung ke server'};
    user = null;

    

    try{
      final run = await http.get(url,headers: API.header()..addAll({
        'email': txtEmail.value.text,
        'password': txtPassword.value.text,
      }));
      result['code'] = run.statusCode;
      final Obj = jsonDecode(run.body);

      if(run.statusCode == 200){
        user = UserModel.fromMap(Obj['data']);
        API.userid = '${user?.id}';
        API.token = '${user?.token}';
      }else if(run.statusCode >= 400 && run.statusCode < 500){
        result['message'] = Obj['message'];
      }
    }catch(e){
      print('error login $e');
    }

    loading = false;
    notifyListeners();

    return result;

  }
}