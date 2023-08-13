import 'dart:convert';

import 'package:character_viewer/feature/characterList/repository/data/character_model.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../../../main.dart';
import 'data/duckduckgo_response.dart';

class CharacterRepository {
  Future<List<CharacterModel>> retrieveCharacters() async {
    final response = await GetIt.instance.get<Client>().get(Uri.parse(API_URL));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) as Map?;
      final parsedResponse =
          DuckduckgoResponse.fromJson(result as Map<String, dynamic>);
      final characters = parsedResponse.relatedTopics
              ?.map((topic) => CharacterModel.fromJson(topic))
              .toList() ??
          [];

      return characters;
    }

    return [];
  }
}
