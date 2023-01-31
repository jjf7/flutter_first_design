import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/background_screen.dart';
import '../widgets/bottom_navitagion_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [
        BackgroundScreen(),
        _TitleAndSubtitle(),
        _ContentHome(),
      ]),
      bottomNavigationBar: const BottomNavigationBarScreen(),
    );
  }
}

class _CardHome extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _CardHome(
      {required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(177, 85, 63, 126),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: color,
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      )),
                  SizedBox(height: 20),
                  Text(text,
                      style: TextStyle(
                        fontSize: 18,
                      ))
                ],
              )),
        ),
      ),
    );
  }
}

class _ContentHome extends StatelessWidget {
  const _ContentHome();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.only(top: size.height * 0.2),
          child: Table(
            children: const [
              TableRow(
                children: [
                  _CardHome(
                      icon: Icons.plus_one,
                      text: "Opcion1",
                      color: Colors.green),
                  _CardHome(
                      icon: Icons.add_a_photo,
                      text: "Opcion2",
                      color: Colors.blue),
                ],
              ),
              TableRow(
                children: [
                  _CardHome(
                      icon: Icons.navigate_before_outlined,
                      text: "Opcion4",
                      color: Colors.yellow),
                  _CardHome(
                      icon: Icons.mode_edit,
                      text: "Opcion5",
                      color: Colors.orange),
                ],
              ),
              TableRow(
                children: [
                  _CardHome(
                      icon: Icons.mail_outlined,
                      text: "Opcion7",
                      color: Colors.indigo),
                  _CardHome(
                      icon: Icons.nearby_error_sharp,
                      text: "Opcion8",
                      color: Colors.teal),
                ],
              ),
              TableRow(
                children: [
                  _CardHome(
                      icon: Icons.airlines_outlined,
                      text: "Opcion10",
                      color: Colors.lightBlue),
                  _CardHome(
                      icon: Icons.grid_3x3_outlined,
                      text: "Opcion11",
                      color: Colors.blueGrey),
                ],
              ),
            ],
          )),
    );
  }
}

class _TitleAndSubtitle extends StatelessWidget {
  const _TitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Esse duis deserunt quis.',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              Text('Esse duis deserunt quis et officia nostrud proident culpa.',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          )),
    );
  }
}
