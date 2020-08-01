import 'package:flutter/material.dart';
import 'package:testprovider/src/widgets/super_floatingaction.dart';
import 'package:testprovider/src/widgets/super_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroesAPP'),
      ),
      body: Center(
        child: SuperText(),
      ),
      floatingActionButton: SuperActionButton(),
    );
  }
}
