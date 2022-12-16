import 'package:darkmode/screens/home_screen.dart';
import 'package:darkmode/themes/theme_color_scheme.dart';
import 'package:darkmode/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> themeChangeProvider,
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) =>

    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark theme',
      theme: ThemeColor.themeData(themeChangeProvider.darkTheme, context),
      home: const HomeScreen(),
    )));
  }
}
