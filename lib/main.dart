import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage(), color: Colors.transparent);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Image.network(
                    'https://i.pinimg.com/736x/7e/7f/aa/7e7faa7a7fbce5132f8f0da9f5b2dca3.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Pode entrar!", style: TextStyle(fontSize: 50)),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Text("0", style: TextStyle(fontSize: 80)),
                          ),
                          Row(
                            children: [
                              SizedBox(height: 100),
                              InkWell(
                                onTap: () {
                                  print("botao precionado");
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 100,
                                  color: Colors.amber,
                                  child: Text(
                                    "Entrou",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              SizedBox(width: 100, height: 100),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.0),
                                    color: Colors.redAccent,
                                  ),
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 100,

                                  child: Text(
                                    "Saiu",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
