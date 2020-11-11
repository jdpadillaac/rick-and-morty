import 'dart:convert';

import 'package:rick_and_morty/data/http_repository/character_repo.dart';
import 'package:rick_and_morty/domain/entities/character.dart';
import 'package:rick_and_morty/domain/repository/character.dart';

class CharactedData extends CharacterRepository {
  @override
  Future<List<Character>> getList() async {
    final storage = HttpCharacterStorage();
    final result = await storage.getList();

    final jsonData = jsonDecode(result);
    List<Character> characterList = [];

    jsonData["results"].forEach((character) {
      Character newCharacter = Character.fromJson(character);
      characterList.add(newCharacter);
    });

    return characterList;
  }
}
