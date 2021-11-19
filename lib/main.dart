import 'package:flutter/material.dart';
import 'file:///E:/AndroidStudioProjects/news_app/lib/screens/WelcomPage.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/utiliteis/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false){
    _screen = WelcomePage();
  }else{
    _screen = HomeScreen();
  }
  runApp(NewsApp(_screen));
}
class NewsApp extends StatelessWidget{
 final Widget _screen;

 NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
    theme: AppTheme().apptheme,
    home: _screen,
   );
  }

}
