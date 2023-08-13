import 'package:character_viewer/feature/characterList/bloc/character_bloc.dart';
import 'package:character_viewer/feature/characterList/repository/data/character_model.dart';
import 'package:character_viewer/feature/characterList/widgets/character_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main.dart';

class CharacterListItem extends StatelessWidget {
  const CharacterListItem({super.key, this.character, this.isSelected = false});

  final CharacterModel? character;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<CharacterBloc>()
            .add(SelectCharacter(character: character));
        if (MediaQuery.of(context).size.width <= kTabletBreakpoint) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CharacterDetails(
                character: character,
              ),
            ),
          );
        }
      },
      child: Container(
        color:
            MediaQuery.of(context).size.width >= kTabletBreakpoint && isSelected
                ? Colors.grey[800]
                : null,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 90,
                  child: character?.imageUrl.isNotEmpty ?? false
                      ? Image.network(
                          character!.imageUrl,
                          fit: BoxFit.scaleDown,
                          width: 80,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.error,
                              size: 50,
                            );
                          },
                        )
                      : const Icon(Icons.person, size: 80),
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Text(
                  character?.title ?? 'N/A',
                  maxLines: 2,
                )),
              ],
            )),
      ),
    );
  }
}
