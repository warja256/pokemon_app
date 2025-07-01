import 'package:flutter/material.dart';
import 'package:pokemon_app/config/theme/theme.dart';
import 'package:pokemon_app/feautures/pokemon/presentation/pages/pokemon_screen.dart';

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CryptoCurrencies',
      theme: lightTheme,
      home: PokemonScreen(),
    );
  }
}
