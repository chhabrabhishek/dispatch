import 'package:adwaita/adwaita.dart';
import 'package:dispatch/widgets/url-panel.dart';
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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Parameters',
                ),
                Tab(
                  text: 'Body',
                ),
                Tab(
                  text: 'Headers',
                ),
              ],
            ),
            title: const UrlPanelWidget(),
          ),
          body: TabBarView(
            children: <Widget>[
              new TableWidget(
                isFileSelectIncluded: false,
                hintText: 'Parameter',
              ),
              Icon(Icons.directions_transit),
              new TableWidget(
                isFileSelectIncluded: false,
                hintText: 'Header',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
