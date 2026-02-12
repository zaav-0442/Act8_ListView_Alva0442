import 'package:flutter/material.dart';

void main() => runApp(const AppPizzeria());

class AppPizzeria extends StatelessWidget {
  const AppPizzeria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizzeria',
      // Aplicamos un tema oscuro global
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A), // Fondo casi negro
      ),
      home: const Ingredientes(),
    );
  }
}

class Ingredientes extends StatelessWidget {
  const Ingredientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '6°J - Freddy Fazbear\'s Pizzeria',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontFamily: 'Serif',
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 129, 82, 54),
        elevation: 10,
        leading: IconButton(
          icon: const Icon(Icons.restaurant_menu,
              color: Color.fromARGB(255, 173, 149, 12)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam, color: Colors.white70),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_active, color: Colors.white70),
            onPressed: () {},
          ),
        ],
      ),
      // --- CUERPO DE LA APP CON LISTVIEW ---
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
          // Elemento 1: Pepperoni (Rojo Pastel)
          ListTile(
            leading: Icon(Icons.local_pizza, color: Color(0xFFFFADAD)),
            title: Text('Pepperoni Crujiente', style: TextStyle(fontSize: 18)),
            trailing: Icon(Icons.add_circle_outline, color: Color(0xFFFFADAD)),
          ),
          Divider(color: Colors.white10), // Una línea sutil de separación

          // Elemento 2: Queso (Amarillo Pastel)
          ListTile(
            leading: Icon(Icons.layers, color: Color(0xFFFFD6A5)),
            title: Text('Extra Queso Mozzarella', style: TextStyle(fontSize: 18)),
            trailing: Icon(Icons.add_circle_outline, color: Color(0xFFFFD6A5)),
          ),
          Divider(color: Colors.white10),

          // Elemento 3: Champiñones (Verde Menta Pastel)
          ListTile(
            leading: Icon(Icons.grass, color: Color(0xFFCAFFBF)),
            title: Text('Champiñones del Bosque', style: TextStyle(fontSize: 18)),
            trailing: Icon(Icons.add_circle_outline, color: Color(0xFFCAFFBF)),
          ),
          Divider(color: Colors.white10),

          // Elemento 4: Piña (Azul Cielo Pastel)
          ListTile(
            leading: Icon(Icons.ac_unit, color: Color(0xFF9BF6FF)),
            title: Text('Piña Tropical', style: TextStyle(fontSize: 18)),
            trailing: Icon(Icons.add_circle_outline, color: Color(0xFF9BF6FF)),
          ),
        ],
      ),
    );
  }
}