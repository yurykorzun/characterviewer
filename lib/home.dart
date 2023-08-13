import 'package:character_viewer/feature/characterList/bloc/character_bloc.dart';
import 'package:character_viewer/feature/characterList/repository/character_repository.dart';
import 'package:character_viewer/feature/characterList/widgets/characters_view.dart';
import 'package:character_viewer/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  final String title = APP_TITLE;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CharacterBloc(
                repository: GetIt.instance<CharacterRepository>()),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: const CharactersView(),
        ));
  }
}
