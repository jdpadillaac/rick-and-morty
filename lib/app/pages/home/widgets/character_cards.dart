import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/widgets/character_card.dart';
import 'package:rick_and_morty/data/repository/character/characte_repo.dart';

class CharacterCards extends StatefulWidget {
  CharacterCards({Key key}) : super(key: key);

  @override
  _CharacterCardsState createState() => _CharacterCardsState();
}

class _CharacterCardsState extends State<CharacterCards> {
  final data = CharactedData();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data.getList(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              ...List.generate(
                snapshot.data.length,
                (index) => CharacterCard(
                  item: snapshot.data[index],
                  image: snapshot.data[index].image,
                  name: snapshot.data[index].name,
                  specie: 'humano',
                ),
              ),
            ],
          );
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error ${snapshot.error}'));
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
