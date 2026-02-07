import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
  title: 'SAGE',
  home: Scaffold(
    body: Center(
      child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
        children: [
          TitleSection(name: 'SAGE', location: 'ia que te ajuda a passar em calculo'),
          const SizedBox(height: 50), // Espaço entre o título e o botão
          Center(
            child: SizedBox(
              width: 250,
              height: 80,
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Text('Nova Questão'),
              ),
            ),
          ),
        ],
      ),
    ),
    ),
  ),
);
}
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          
        ],
      ),
    );
  }
}
