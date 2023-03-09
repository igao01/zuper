import 'package:flutter/material.dart';

import '../widgets/home_field.dart';

class Hoteis extends StatefulWidget {
  const Hoteis({super.key});

  @override
  State<Hoteis> createState() => _HoteisState();
}

class _HoteisState extends State<Hoteis> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/hotel.webp"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                child: Column(
                  children: [
                    HomeField(
                      title: 'Destino',
                      label: 'Qual o seu Destino?',
                      icon: Icons.place,
                    ),
                    HomeField(
                      title: 'Entrada',
                      label: 'Check In',
                      icon: Icons.event,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: 400,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xfff2901b)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Buscar',
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
