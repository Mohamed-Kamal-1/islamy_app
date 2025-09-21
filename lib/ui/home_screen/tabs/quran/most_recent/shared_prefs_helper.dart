import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesKey {
  static const String mostRecentKey = 'mostRecentKey';
}

void saveLastSuraIndex(int newSuraIndex) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentList =
      prefs.getStringList(SharedPreferencesKey.mostRecentKey) ?? [];

  if (mostRecentList.contains('$newSuraIndex')) {
    mostRecentList.remove('$newSuraIndex');
    mostRecentList.insert(0, '$newSuraIndex');
  }

  else {
    mostRecentList.insert(0, '$newSuraIndex');
  }

  if (mostRecentList.length > 5) {
    mostRecentList = mostRecentList.sublist(0,5);
  }
  await prefs.setStringList(SharedPreferencesKey.mostRecentKey, mostRecentList);
}

// Future<List<int>> readMostRecentList() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//
//   List<String> mostRecentList =
//       prefs.getStringList(SharedPreferencesKey.mostRecentKey) ?? [];
//
//   List<int> mostRecentListAsInt = mostRecentList
//       .map((element) => int.parse(element))
//       .toList();
//   return mostRecentListAsInt;
// }
