// --- PÁGINA QUE VISUALIZO OS MEUS PRODUTOS ADICIONADO AO CARRINHO DE COMPRAS E REALIZO O ENVIO DO PEDIDO --- //

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'MyBottomNavigationBar.dart';

class CarrinhoDeCompras extends StatefulWidget {
  const CarrinhoDeCompras({super.key, required List<String> itens});

  @override
  State<CarrinhoDeCompras> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CarrinhoDeCompras> {
  int _currentIndex = 0;

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
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: Container(
        width: 430,
        height: 932,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: -330,
              child: Text(
                'Meu carrinho de pedidos',
                style: TextStyle(
                  color: Color(0xFF00255E),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  height: 31.20,
                  letterSpacing: -0.60,
                ),
              ),
            ),

            //card
            Positioned(
              left: 14,
              top: 60,
              child: Container(
                width: 350,
                height: 200,
                decoration: ShapeDecoration(
                  color: Color(0x0F00255E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40,
              top: 120,
              child: Container(
                width: 132,
                height: 24,
                decoration: ShapeDecoration(
                  color: Color(0xB200255E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'R\$ 10,00', // Texto a ser adicionado
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: -270,
              child: SizedBox(
                width: 233,
                child: Text(
                  '  2X Cerveja Spaten 350ml',
                  style: TextStyle(
                    color: Color(0xFF00255E),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 31.20,
                    letterSpacing: -0.60,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: 200,
              child: SizedBox(
                width: 132,
                height: 30,
                child: TextButton(
                  onPressed: () {
                    // Lógica de exclusão do item
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xB200255E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Excluir',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 40,
              top: 357,
              child: Container(
                width: 24,
                height: 24,
                clipBehavior: Clip.none,
                child: Stack(children: []),
              ),
            ),
            Positioned(
              left: 268,
              top: 60,
              child: Container(
                width: 117,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/card11.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
