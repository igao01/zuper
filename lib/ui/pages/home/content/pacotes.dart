import 'package:flutter/material.dart';
import 'package:zupper/ui/pages/home/widgets/home_field.dart';

class Pacotes extends StatefulWidget {
  const Pacotes({super.key});

  @override
  State<Pacotes> createState() => _PacotesState();
}

class _PacotesState extends State<Pacotes> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/praia.jpeg"), fit: BoxFit.cover),
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
                    )),
                child: Column(
                  children: [
                    RadioListTile(
                      title: const Text("Passagem + Hospedagem"),
                      value: "teste",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                child: Column(
                  children: [
                    HomeField(
                      title: 'Origem',
                      label: 'Cidade ou Aeroporto',
                      icon: Icons.place,
                    ),
                    HomeField(
                      title: 'Destino',
                      label: 'Cidade ou Aeroporto',
                      icon: Icons.flight,
                    ),
                    HomeField(
                      title: 'Passageiros',
                      label: ' 1 Viajante(s), 1 Quarto(s), Econômica',
                      icon: Icons.person,
                    ),
                    RadioListTile(
                      title: const Text(
                        "Hospedagem para uma parte da viagem",
                        style: TextStyle(fontSize: 14),
                      ),
                      value: "teste",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
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
                          'Buscar Pacote',
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
