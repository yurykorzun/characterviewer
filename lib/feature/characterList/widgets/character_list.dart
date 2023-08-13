import 'package:character_viewer/feature/characterList/widgets/character_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';
import '../repository/data/character_model.dart';
import 'loading.dart';

class CharacterList extends StatelessWidget {
  const CharacterList(
      {super.key,
      required this.status,
      required this.characters,
      required this.selectedCharacter});

  final List<CharacterModel>? characters;
  final CharacterModel? selectedCharacter;
  final FetchingStatus status;

  @override
  Widget build(BuildContext context) {
    if (status == FetchingStatus.loading) {
      return const Loading();
    } else if (status == FetchingStatus.success) {
      if (characters?.isEmpty ?? true) {
        return const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'No characters were found.',
          ),
        );
      } else {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: characters?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return CharacterListItem(
              character: characters?[index],
              isSelected: selectedCharacter == characters?[index],
            );
          },
        );
      }
    } else if (status == FetchingStatus.error) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Text(
              'Oops, something didn\'t go as planned.',
            ),
            TextButton(
              onPressed: () {
                context.read<CharacterBloc>().add(const FetchCharacters());
              },
              child: const Text('Try again'),
            ),
          ],
        ),
      );
    }

    return Container();
  }
}
