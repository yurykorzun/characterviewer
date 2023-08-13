part of 'character_bloc.dart';

class CharactersState extends Equatable {
  const CharactersState({
    this.characters,
    this.filteredCharacters,
    this.selectedCharacter,
    this.errorMessage,
    this.queryString,
    this.status = FetchingStatus.initial,
  });

  final List<CharacterModel>? characters;
  final List<CharacterModel>? filteredCharacters;
  final CharacterModel? selectedCharacter;
  final String? queryString;
  final String? errorMessage;
  final FetchingStatus status;

  CharactersState copyWith({
    List<CharacterModel>? characters,
    List<CharacterModel>? filteredCharacters,
    CharacterModel? selectedCharacter,
    String? errorMessage,
    String? queryString,
    FetchingStatus? status,
  }) {
    return CharactersState(
      status: status ?? this.status,
      characters: characters ?? this.characters,
      filteredCharacters: filteredCharacters ?? this.filteredCharacters,
      selectedCharacter: selectedCharacter ?? this.selectedCharacter,
      queryString: queryString ?? this.queryString,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        characters,
        filteredCharacters,
        selectedCharacter,
        errorMessage,
        status,
        queryString,
      ];
}

enum FetchingStatus {
  initial,
  loading,
  success,
  error,
}
