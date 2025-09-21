import 'package:shared_preferences/shared_preferences.dart';

class MostRecentSharedPreferences{
  late SharedPreferences _sharedPreferences;

  MostRecentSharedPreferences._(){
    _intiSharedPreferences();
  }
  void _intiSharedPreferences()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static MostRecentSharedPreferences? mostRecentProvider = null;
  static MostRecentSharedPreferences? getInstance(){
    if(mostRecentProvider == null){
      mostRecentProvider = MostRecentSharedPreferences._();
    }
    return mostRecentProvider;
  }
}
