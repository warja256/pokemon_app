import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_app/pokemon_app.dart';
import 'package:talker_flutter/talker_flutter.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      final talker = TalkerFlutter.init();
      GetIt.I.registerSingleton(talker);

      FlutterError.onError = (details) =>
          GetIt.I<Talker>().handle(details.exception, details.stack);

      runApp(PokemonApp());
    },
    (e, st) {
      print('Caught error in zone: $e');
      print(st);
      GetIt.I<Talker>().handle(e, st);
    },
  );
}
