import 'package:flutter/material.dart';
import 'package:testing1/model/favorite.dart';
import 'package:testing1/screens/favorite.dart';
import 'package:testing1/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: HomePage.routeId,
        routes: {
          HomePage.routeId: (context) => HomePage(),
          FavoritePage.routeId: (context) => FavoritePage(),
        },
      ),
    );
  }
}
