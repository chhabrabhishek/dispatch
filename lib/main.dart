import 'package:adwaita/adwaita.dart';
import 'package:flutter/material.dart';
import 'package:dispatch/widgets/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dispatch',
      theme: AdwaitaThemeData.light(),
      darkTheme: AdwaitaThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: TableWidget(),
      ),
    );
  }
}
