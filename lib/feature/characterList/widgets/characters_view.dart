import 'package:character_viewer/feature/characterList/widgets/character_details.dart';
import 'package:character_viewer/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';
import 'character_list.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({super.key});

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(const FetchCharacters());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharactersState>(
        bloc: context.read<CharacterBloc>(),
        builder: (context, state) {
          if (MediaQuery.of(context).size.width >= kTabletBreakpoint) {
            return Row(
              children: [
                Expanded(
                    child: CharacterList(
                        status: state.status,
                        characters: state.filteredCharacters,
                        selectedCharacter: state.selectedCharacter)),
                Expanded(
                    child: CharacterDetails(
                  character: state.selectedCharacter,
                )),
              ],
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search by title',
                    ),
                    controller: textEditingController,
                    onChanged: (value) => context
                        .read<CharacterBloc>()
                        .add(SearchCharacters(queryString: value)),
                  ),
                ),
                Expanded(
                    child: CharacterList(
                        status: state.status,
                        characters: state.filteredCharacters,
                        selectedCharacter: state.selectedCharacter)),
              ],
            );
          }
        });
  }
}
