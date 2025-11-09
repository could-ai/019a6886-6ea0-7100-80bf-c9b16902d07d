import 'package:flutter/material.dart';

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Compras'),
      ),
      body: const Center(
        child: Text(
          'Tela de Lista de Compras',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
