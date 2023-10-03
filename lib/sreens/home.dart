import 'package:flutter/material.dart';

import '../components/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  List<int> itens = List.generate(6, (index) => index + 1);
  void incrementarLista() {
    setState(() {
      itens.add(itens.length + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Prova - Kennedy Ribeiro",
          ),
        ),
        body: GridView.builder(
          itemCount: itens.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8, mainAxisSpacing: 8, crossAxisCount: 2),
          itemBuilder: (_, int index) {
            return CardComponent(index + 1);
          },
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: incrementarLista,
        backgroundColor: Color.fromARGB(255, 0, 255, 76),
        child: const Icon(Icons.add),
      ),
      );
  }
}
