class API{


  static const String key = 'ryanthegang';
  static const String baseURL = 'https://apikerenryanthegang.000webhostapp.com';

  static const String nodeLogin = '${baseURL}login';
  static const String nodeDetail = '${baseURL}detail';
  static const String nodeUser = '${baseURL}user';

  static String token='';
  static String userid='';

  static Map<String,String>header()=>{'apikey':key,'token':token,'user_id':userid};
}