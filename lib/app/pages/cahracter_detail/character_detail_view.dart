import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/entities/character.dart';

class CharacterDetail extends StatelessWidget {
  static String routeName = 'characterDetail';
  final Character character;
  const CharacterDetail({Key key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle'),
      ),
      body: Text('detalle'),
    );
  }
}
