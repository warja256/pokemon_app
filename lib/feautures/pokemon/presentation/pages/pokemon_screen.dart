import 'package:flutter/material.dart';
import 'package:pokemon_app/feautures/pokemon/presentation/widgets/big_text_widget.dart';
import 'package:pokemon_app/feautures/pokemon/presentation/widgets/color_picker_text_widget.dart';
import 'package:pokemon_app/feautures/pokemon/presentation/widgets/color_radio_button.dart';
import 'package:pokemon_app/feautures/pokemon/presentation/widgets/name_text_widget.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Название', style: Theme.of(context).textTheme.titleLarge),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset('assets/svg/theme_switcher.png', width: 30),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigTextWidget(),
            SizedBox(height: 18),
            Text(
              'Имя покемона',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 6),
            NameTextWidget(),
            SizedBox(height: 25),
            Text(
              'Цвет покемона',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 11),
            ColorRadioButton(),
            SizedBox(height: 18),
            Center(
              child: Text(
                'или',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 18),
            ColorPickerTextWidget(),
          ],
        ),
      ),
    );
  }
}
