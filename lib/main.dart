import 'dart:async';

import 'package:character_viewer/app.dart';
import 'package:character_viewer/feature/characterList/bloc/character_bloc.dart';
import 'package:character_viewer/feature/characterList/repository/character_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

const kTabletBreakpoint = 720.0;
const kDesktopBreakpoint = 1440.0;

const API_URL = String.fromEnvironment('API_URL');
const APP_TITLE = String.fromEnvironment('APP_TITLE');

FutureOr<void> main() async {
  GetIt.instance.registerSingleton<Client>(Client());
  GetIt.instance.registerSingleton<CharacterRepository>(CharacterRepository());
  GetIt.instance.registerSingleton<CharacterBloc>(
      CharacterBloc(repository: GetIt.instance<CharacterRepository>()));

  runApp(const App());
}
