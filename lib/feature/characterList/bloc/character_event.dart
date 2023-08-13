part of 'character_bloc.dart';

abstract class CharacterEvent extends Equatable {
  const CharacterEvent();

  @override
  List<Object?> get props => [];
}

class FetchCharacters extends CharacterEvent {
  const FetchCharacters();

  @override
  List<Object?> get props => [];
}

class SearchCharacters extends CharacterEvent {
  const SearchCharacters({this.queryString});

  final String? queryString;

  @override
  List<Object?> get props => [queryString];
}

class SelectCharacter extends CharacterEvent {
  const SelectCharacter({this.character});

  final CharacterModel? character;

  @override
  List<Object?> get props => [character];
}
