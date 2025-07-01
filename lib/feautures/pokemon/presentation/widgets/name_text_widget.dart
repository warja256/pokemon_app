import 'package:flutter/material.dart';

class NameTextWidget extends StatelessWidget {
  const NameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        maxLines: null,
        expands: true,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: Colors.black),
        decoration: InputDecoration(
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
