import 'package:rick_and_morty/domain/entities/character.dart';

abstract class CharacterRepository {
  Future<List<Character>> getList();
}
