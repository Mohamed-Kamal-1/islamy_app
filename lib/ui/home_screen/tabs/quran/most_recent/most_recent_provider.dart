import 'package:flutter/cupertino.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/most_recent/most_recent_shared_preferences.dart';
import 'package:islamy_app/ui/home_screen/tabs/quran/most_recent/shared_prefs_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MostRecentProvider extends ChangeNotifier{
  late  MostRecentSharedPreferences sharedPreferences;
   List<int> mostRecentList = [];
  MostRecentProvider(){
    sharedPreferences = MostRecentSharedPreferences.getInstance()!;
  }
  void readMostRecentList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> storedMostRecentList =
        prefs.getStringList(SharedPreferencesKey.mostRecentKey) ?? [];

     mostRecentList = storedMostRecentList.map((element) => int.parse(element)).toList();
     notifyListeners();
  }

}