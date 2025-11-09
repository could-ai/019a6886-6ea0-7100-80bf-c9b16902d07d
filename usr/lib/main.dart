import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/search_screen.dart';
import 'package:couldai_user_app/screens/favorites_screen.dart';
import 'package:couldai_user_app/screens/shopping_list_screen.dart';
import 'package:couldai_user_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sabores do Dia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFFF7A00),
        scaffoldBackgroundColor: const Color(0xFFFFF6E5),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF7A00),
          primary: const Color(0xFFFF7A00), // Laranja queimado
          secondary: const Color(0xFFE63946), // Vermelho suave
          tertiary: const Color(0xFFF4A300), // Amarelo mostarda
          background: const Color(0xFFFFF6E5), // Creme
          onBackground: const Color(0xFF2C2C2C), // Cinza grafite
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          displayMedium: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          displaySmall: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          titleLarge: TextStyle(color: Color(0xFF2C2C2C), fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Color(0xFF2C2C2C)),
          titleSmall: TextStyle(color: Color(0xFF2C2C2C)),
          bodyLarge: TextStyle(color: Color(0xFF2C2C2C)),
          bodyMedium: TextStyle(color: Color(0xFF2C2C2C)),
          bodySmall: TextStyle(color: Color(0xFF2C2C2C)),
          labelLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFF6E5),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF2C2C2C)),
          titleTextStyle: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF7A00),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFFFF7A00),
          unselectedItemColor: Color(0xFF2C2C2C),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
    ShoppingListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
