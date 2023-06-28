// --- PÁGINA DOS MEUS BOTÕES DE NAVEGAÇÃO INFERIOR, É CHAMADO PELA AS OUTRAS CLASSES --- //
// --- INTERLIGADA A TODAS AS PÁGINAS QUE É CHAMADO --- //

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'CarrinhoDeCompras.dart';
import 'MyBottomNavigationBar.dart';

class VisualizandoBebida extends StatefulWidget {
  const VisualizandoBebida({Key? key}) : super(key: key);

  @override
  State<VisualizandoBebida> createState() => _VisualizandoBebidaState();
}

class _VisualizandoBebidaState extends State<VisualizandoBebida> {
  int _currentIndex = 0;
  int _quantity = 0; // Variável para controlar a quantidade

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00265F),
        centerTitle: true,
        title: Text("BARQ"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/FundoBebidas.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 300),
                Container(
                  width: 400,
                  height: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Positioned(
                        top: 300,
                        left: 0,
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            // CÓDIGO INCREMENTADOR
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      if (_quantity > 0) {
                                        _quantity--;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  '$_quantity',
                                  style: TextStyle(fontSize: 18),
                                ),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      _quantity++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: SizedBox(
                          width: 400,
                          height:
                              62, // Aumente a altura do botão conforme necessário
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    actionsOverflowAlignment:
                                        OverflowBarAlignment.center,
                                    title: Text(
                                        'Adicionado ao carrinho com sucesso!'),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Continuar Pedindo'),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: Size(250, 40),
                                          backgroundColor: Color(0xFF00265F),
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CarrinhoDeCompras(
                                                itens: [],
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text('Ver carrinho'),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: Size(250, 40),
                                          backgroundColor:
                                              Color.fromARGB(255, 85, 85, 85),
                                          primary: Color.fromARGB(
                                              255, 255, 255, 255),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  300, 62), // Atualize o tamanho do botão aqui
                              backgroundColor: Color(0xFF00265F),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text('Adicionar ao carrinho'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 8,
            child: Align(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/images/bebida.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 37,
            top: 370,
            child: Align(
              child: SizedBox(
                width: 222,
                height: 32,
                child: Text(
                  'Cerveja Heineken 600ml',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.5599022865,
                    letterSpacing: -0.6,
                    color: Color(0xff4f4f4f),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 37,
            top: 410,
            child: Align(
              child: SizedBox(
                width: 328,
                height: 71,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Tempus interdum egestas vitae tellus parturient nam risus sed. Euismod tempor nunc eu est orci aenean in. ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.5599023183,
                    letterSpacing: -0.45,
                    color: Color(0xff4f4f4f),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 250,
            top: 370,
            child: Align(
              child: SizedBox(
                width: 92,
                height: 26,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xb200255e),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 250,
            top: 370,
            child: Align(
              child: SizedBox(
                width: 92,
                height: 26,
                child: Text(
                  '     R\u0024 10,00',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.5599023183,
                    letterSpacing: -0.45,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
