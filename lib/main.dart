import 'package:flut_kit_project/local_string.dart';
import 'package:flut_kit_project/ui/dashbord_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

/// The main widget state.
class _MyAppState extends State<MyApp> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: const Locale('en', 'us'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFFFFFFFF),
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          actionsIconTheme: IconThemeData(color: Colors.black),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        cardColor: const Color(0xFFFFFFFF),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFFFFFFF),
        ),
        cardTheme: CardTheme(
          color: Colors.grey.shade100,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFFFFFFFF),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xFF000000),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.black),
          displayMedium: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.black),
          titleSmall: TextStyle(color: Colors.black),
          titleLarge: TextStyle(color: Colors.black),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF000000),
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
        scaffoldBackgroundColor: const Color(0xFF000000),
        cardColor: const Color(0xFF000000),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF000000),
        ),
        cardTheme: CardTheme(color: Colors.grey.shade900),
        drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF000000)),
        listTileTheme: const ListTileThemeData(textColor: Colors.white),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: DashbordPage(
        dark: isDarkModeEnabled,
        onChange: (bool isDarkModeEnabled1) {
          onStateChanged(isDarkModeEnabled1);
        },
      ),
    );
  }

  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}
