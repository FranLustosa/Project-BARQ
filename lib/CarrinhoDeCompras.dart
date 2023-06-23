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
              top: -450,
              child: Text(
                'Meu carrinho de pedidos',
                style: TextStyle(
                  color: Color(0xFF00255E),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 31.20,
                  letterSpacing: -0.60,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 466,
              child: Container(
                width: 370,
                height: 62,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 370,
                        height: 62,
                        decoration: ShapeDecoration(
                          color: Color(0xFF00255E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 115,
                      top: 21,
                      child: Text(
                        'Finalizar Pedido',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 20,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 567,
              child: Container(
                width: 370,
                height: 62,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 370,
                        height: 62,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4F4F4F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 113,
                      top: 21,
                      child: Text(
                        'Cancelar Pedido',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 20,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 14,
              top: 100,
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
              left: 352,
              top: 360,
              child: SizedBox(
                width: 16,
                height: 21,
                child: Text(
                  '+',
                  style: TextStyle(
                    color: Color(0xFF00255E),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 31.20,
                    letterSpacing: -0.60,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 282,
              top: 359,
              child: SizedBox(
                width: 16,
                height: 21,
                child: Text(
                  '-',
                  style: TextStyle(
                    color: Color(0xFF00255E),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 31.20,
                    letterSpacing: -0.60,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 318,
              top: 361,
              child: Text(
                '2',
                style: TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 31.20,
                  letterSpacing: -0.60,
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: -200,
              child: SizedBox(
                width: 233,
                child: Text(
                  '2X Cerveja Spaten 350ml',
                  style: TextStyle(
                    color: Color(0xFF00255E),
                    fontSize: 20,
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
              top: 100,
              child: SizedBox(
                width: 63,
                child: Text(
                  'Excluir',
                  style: TextStyle(
                    color: Color(0xFF4F4F4F),
                    fontSize: 18,
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
              top: 277,
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
              top: 282,
              child: SizedBox(
                width: 106,
                height: 14,
                child: Text(
                  'Total R\$ 10,00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
              top: 236,
              child: Container(
                width: 117,
                height: 106,
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
