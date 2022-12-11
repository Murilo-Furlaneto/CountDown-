import 'package:flutter/material.dart';

class ButtonTimer extends StatelessWidget {
  const ButtonTimer({
    Key? key,
    required this.titulo,
    required this.inc,
  }) : super(key: key);

  final String titulo;
  final void Function()? inc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: inc,
      child: Row(
        children: [
          Text(titulo),
        ],
      ),
    );
  }
}
