import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key,
      required this.text,
      required this.dec,
      required this.inc,
      required this.valor})
      : super(key: key);

  final String text;
  final int valor;
  final void Function() dec;
  final void Function() inc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(15),
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '$valor ',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.all(15)),
                onPressed: inc,
                child: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ))
          ],
        ),
      ],
    );
  }
}
