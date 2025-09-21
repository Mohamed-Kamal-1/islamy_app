import 'package:shared_preferences/shared_preferences.dart';

class MostRecentSharedPreferences{
  late SharedPreferences _sharedPreferences;

  MostRecentSharedPreferences._(){
    _intiSharedPreferences();
  }
  void _intiSharedPreferences()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static MostRecentSharedPreferences? mostRecentSharedPreferences = null;

  static MostRecentSharedPreferences? getInstance(){
    if(mostRecentSharedPreferences == null){
      mostRecentSharedPreferences = MostRecentSharedPreferences._();
    }
    return mostRecentSharedPreferences;
  }
}
