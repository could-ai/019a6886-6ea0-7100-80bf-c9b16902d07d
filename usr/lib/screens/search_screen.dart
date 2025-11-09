import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Receitas'),
      ),
      body: const Center(
        child: Text(
          'Tela de Busca',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
