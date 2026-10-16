import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F2EC),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            // Endereco e carrinho
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ENTREGAR EM', style: TextStyle(fontSize: 11, color: Colors.grey)),
                    Text('Rua das Flores, 120', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Icon(Icons.shopping_cart_outlined, size: 28),
              ],
            ),
            SizedBox(height: 30),

            // Nome do restaurante
            Text('teste italiano', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Massas feitas do seu jeito.', style: TextStyle(color: Colors.grey[700])),
            SizedBox(height: 25),

            // Busca
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar uma massa',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Promocao
            Container(
              padding: EdgeInsets.all(20),
              color: Color(0xFF292929),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DESTAQUE', style: TextStyle(color: Colors.white70, fontSize: 12)),
                        SizedBox(height: 10),
                        Text('Monte sua massa', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('A partir de R\$ 29,90', style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ),
                  Icon(Icons.ramen_dining, color: Colors.white, size: 65),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Categorias
            Text('Categorias', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.ramen_dining, size: 32),
                    SizedBox(height: 5),
                    Text('Massas', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.soup_kitchen, size: 32),
                    SizedBox(height: 5),
                    Text('Molhos', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.add_circle_outline, size: 32),
                    SizedBox(height: 5),
                    Text('Extras', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.local_drink_outlined, size: 32),
                    SizedBox(height: 5),
                    Text('Bebidas', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),

            // Produtos
            Text('Nossas massas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'images/espaguete.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Espaguete', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('Molho de tomate e queijo.', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 10),
                        Text('R\$ 29,90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'images/panne-alfredo.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Penne Alfredo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('Molho branco e parmesao.', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 10),
                        Text('R\$ 34,90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'images/espaguete.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bolonhesa', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('Massa com molho de carne.', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 10),
                        Text('R\$ 35,90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Menu inferior: apenas Perfil abre outra tela.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), label: 'Pedidos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
    );
  }
}
