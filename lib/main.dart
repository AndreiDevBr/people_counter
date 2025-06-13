import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(
            'https://yogoway.com.br/wp-content/uploads/2023/02/DSC06320-Medio.jpg',
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.amberAccent,
                  alignment: Alignment(20, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 100,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Pode entrar", style: TextStyle(fontSize: 50)),
                      Text("11", style: TextStyle(fontSize: 80)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 100,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.black,
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Saiu", style: TextStyle(fontSize: 40)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Entrou",
                              style: TextStyle(fontSize: 40),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
