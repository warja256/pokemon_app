import 'package:flutter/material.dart';

class ColorRadioButton extends StatefulWidget {
  const ColorRadioButton({super.key});

  @override
  State<ColorRadioButton> createState() => _ColorRadioButtonState();
}

class _ColorRadioButtonState extends State<ColorRadioButton> {
  final List<Color> colors = [
    Color(0xFFE05A41),
    Color(0xFFEF9D4B),
    Color(0xFFF4BF3D),
    Color(0xFF639D60),
    Color(0xFF417D9F),
    Color(0xFF33499C),
    Color(0xFF9228D9),
    Color(0xFFFFFFFF),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(colors.length, (index) {
          final isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: colors[index],
                  shape: BoxShape.circle,
                  border: index == colors.length - 1
                      ? Border.all(color: Colors.black45, width: 0.5)
                      : null,
                ),
                child: isSelected
                    ? Center(
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: index == colors.length - 1
                                ? Color(0xFF444444)
                                : Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          );
        }),
      ],
    );
  }
}
