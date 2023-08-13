import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repository/character_repository.dart';
import '../repository/data/character_model.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharactersState> {
  CharacterRepository repository;

  CharacterBloc({required this.repository}) : super(const CharactersState()) {
    on<FetchCharacters>(_onFetchCharacters);
    on<SearchCharacters>(_onSearchCharacters);
    on<SelectCharacter>(_onSelectCharacter);
  }

  FutureOr<void> _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    try {
      emit(state.copyWith(status: FetchingStatus.loading));

      final result = await repository.retrieveCharacters();
      emit(state.copyWith(characters: result, status: FetchingStatus.success));
    } catch (e) {
      emit(state.copyWith(status: FetchingStatus.error));
    }

    add(const SearchCharacters(queryString: ''));
  }

  FutureOr<void> _onSearchCharacters(
      SearchCharacters event, Emitter<CharactersState> emit) {
    if (event.queryString != null && event.queryString!.isNotEmpty) {
      final result = state.characters?.where((element) {
        return element.title
            .toLowerCase()
            .contains(event.queryString?.toLowerCase() ?? '');
      }).toList();

      emit(state.copyWith(
        queryString: event.queryString,
        filteredCharacters: result,
      ));
    } else {
      emit(state.copyWith(
        queryString: event.queryString,
        filteredCharacters: state.characters,
      ));
    }
  }

  FutureOr<void> _onSelectCharacter(
      SelectCharacter event, Emitter<CharactersState> emit) {
    emit(state.copyWith(selectedCharacter: event.character));
  }
}
