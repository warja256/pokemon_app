import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  const BigTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      child: TextFormField(
        cursorColor: Colors.black,
        maxLines: null,
        expands: true,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: Colors.black),
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: 'Напишите мысли или опишите свой день...',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          contentPadding: EdgeInsets.all(12),
          fillColor: Color(0xFFFEFDF8),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xFFEAE6DD), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xFFEAE6DD), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xFFEAE6DD), width: 1),
          ),
        ),
      ),
    );
  }
}
