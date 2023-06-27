// --- PÁGINA QUE VISUALIZO OS MEUS PRODUTOS ADICIONADO AO CARRINHO DE COMPRAS E REALIZO O ENVIO DO PEDIDO --- //

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarrinhoDeCompras extends StatefulWidget {
  const CarrinhoDeCompras({super.key});

  @override
  State<CarrinhoDeCompras> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CarrinhoDeCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00265F),
        centerTitle: true,
        title: Text("BARQ"),
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
              top: -410,
              child: Text(
                'Meu carrinho de pedidos',
                style: TextStyle(
                  color: Color(0xFF00255E),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 31.20,
                  letterSpacing: -0.60,
                ),
              ),
            ),

            //card
            Positioned(
              left: 14,
              top: 70,
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
              left: 35,
              top: -230,
              child: SizedBox(
                width: 233,
                child: Text(
                  '2X Cerveja Spaten 350ml',
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
              left: 64,
              top: -100,
              child: SizedBox(
                width: 63,
                child: Text(
                  'Excluir',
                  style: TextStyle(
                    color: Color(0xFF4F4F4F),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 28.08,
                    letterSpacing: -0.54,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: 160,
              child: Container(
                width: 132,
                height: 24,
                decoration: ShapeDecoration(
                  color: Color(0xB200255E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 46,
              top: 150,
              child: SizedBox(
                width: 106,
                height: 14,
                child: Text(
                  'Total R\$ 10,00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 24.96,
                    letterSpacing: -0.48,
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
              top: 100,
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
