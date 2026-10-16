import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292929),
      appBar: AppBar(
        backgroundColor: Color(0xFF292929),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          SizedBox(height: 30),
          Icon(Icons.ramen_dining, color: Colors.white, size: 70),
          SizedBox(height: 12),
          Text(
            'teste italiano',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 35),
          Text(
            'Entrar',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Acesse sua conta para continuar.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 35),
          Text('E-mail', style: TextStyle(color: Colors.white)),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: 'Digite seu e-mail',
              filled: true,
              fillColor: Color(0xFFF5F2EC),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Text('Senha', style: TextStyle(color: Colors.white)),
          SizedBox(height: 8),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Digite sua senha',
              filled: true,
              fillColor: Color(0xFFF5F2EC),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Esqueci minha senha',
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            child: Text('Entrar'),
          ),
          SizedBox(height: 20),
          Text('ou', textAlign: TextAlign.center, style: TextStyle(color: Colors.white70)),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            child: Text('Continuar com Google', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 25),
          Text(
            'Nao tem uma conta? Criar conta',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
