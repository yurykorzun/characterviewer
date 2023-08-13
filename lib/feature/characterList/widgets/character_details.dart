import 'package:character_viewer/feature/characterList/repository/data/character_model.dart';
import 'package:flutter/material.dart';

class CharacterDetails extends StatefulWidget {
  final CharacterModel? character;

  const CharacterDetails({super.key, required this.character});
  @override
  State<CharacterDetails> createState() => _CharacterDetailsState();
}

class _CharacterDetailsState extends State<CharacterDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character?.title ?? ''),
      ),
      body: widget.character == null
          ? const Center(
              child: Text('Select a Character'),
            )
          : SingleChildScrollView(
              child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: widget.character?.imageUrl.isNotEmpty ?? false
                      ? Image.network(
                          widget.character!.imageUrl,
                          fit: BoxFit.scaleDown,
                          width: 80,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.error,
                              size: 120,
                            );
                          },
                        )
                      : const Icon(Icons.person, size: 120)),
              const SizedBox(height: 16),
              Text(
                widget.character?.title ?? '',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.character?.description ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ])),
    );
  }
}
