import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

class ColorPickerTextWidget extends StatefulWidget {
  const ColorPickerTextWidget({super.key});

  @override
  State<ColorPickerTextWidget> createState() => _ColorPickerTextWidgetState();
}

class _ColorPickerTextWidgetState extends State<ColorPickerTextWidget> {
  Color? currentColor;

  void _openColorPicker() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SingleChildScrollView(
          child: ColorPicker(
            pickersEnabled: const <ColorPickerType, bool>{
              ColorPickerType.wheel: true,
              ColorPickerType.accent: false,
              ColorPickerType.primary: false,
            },
            onColorChanged: (Color value) {
              setState(() {
                currentColor = value;
              });
            },
          ),
        ),
        actions: [
          TextButton(
            child: Text('Готово'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: GestureDetector(
        onTap: _openColorPicker,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFFEFDF8),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFEAE6DD), width: 1),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: _openColorPicker,
                icon: const Icon(Icons.color_lens, color: Colors.black),
              ),
              Spacer(),
              Text(
                'Выберите свой цвет',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),

              Spacer(),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                  color: currentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
