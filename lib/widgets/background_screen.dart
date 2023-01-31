import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundGradient(),
        Positioned(left: -70, top: 10, child: _Square()),
      ],
    );
  }
}

class _Square extends StatelessWidget {
  const _Square({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.skewY(0)..rotateZ(-pi / 5.0),
      child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(70),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Color.fromARGB(253, 225, 157, 84),
            ]),
          )),
    );
  }
}

class _BackgroundGradient extends StatelessWidget {
  const _BackgroundGradient();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3, 0.8],
          colors: [
            Color.fromARGB(255, 66, 6, 67),
            Color.fromARGB(255, 14, 8, 23),
          ],
        ),
      ),
    );
  }
}
