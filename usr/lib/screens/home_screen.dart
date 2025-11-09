import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sabores do Dia'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildRecipeOfTheDayCard(context),
          const SizedBox(height: 24),
          _buildCategories(context),
        ],
      ),
    );
  }

  Widget _buildRecipeOfTheDayCard(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Receita do Dia: Salada Caesar',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.timer_outlined, size: 18),
                    SizedBox(width: 8),
                    Text('25 min'),
                    SizedBox(width: 24),
                    Icon(Icons.monetization_on_outlined, size: 18),
                    SizedBox(width: 8),
                    Text('Custo Médio'),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Fazer agora'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories(BuildContext context) {
    final categories = [
      {'icon': '🍲', 'label': 'Brasileiras'},
      {'icon': '🌍', 'label': 'Internacionais'},
      {'icon': '🍰', 'label': 'Sobremesas'},
      {'icon': '🥗', 'label': 'Fitness'},
      {'icon': '🍿', 'label': 'Petiscos'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categorias',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    child: Text(
                      categories[index]['icon']!,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(categories[index]['label']!),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
