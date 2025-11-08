import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
/// ==================== SET STRING ====================
 Future<void> setString(String key, value)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  /// =================== GET STRING =====================

 Future<String> getString (String key) async{
   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   return sharedPreferences.getString(key)??'';
 }
}