import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/src/providers/heroesinfo.dart';
import 'package:testprovider/src/providers/villanosInfo.dart';

class SuperActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroesInfo>(context);
    final villanosinfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesinfo.heroe = 'Ironman';
            villanosinfo.villano = 'El mandarin';
          },
        ),
        FloatingActionButton(
          child: Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesinfo.heroe = 'Capitán América';
            villanosinfo.villano = 'Red Skull';
          },
        ),
      ],
    );
  }
}
