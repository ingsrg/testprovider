import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/src/pages/home_page.dart';
import 'package:testprovider/src/providers/heroesinfo.dart';
import 'package:testprovider/src/providers/villanosInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HeroesInfo(),
        ),
        ChangeNotifierProvider(
          create: (context) => VillanosInfo(),
        )
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()},
      ),
    );
  }
}
