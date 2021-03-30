
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:racha_conta/pages/home/homepage.dart';


class Body extends StatefulWidget {

  String sqtdPessoas;
  String sqtdBebidas;
  String spmBebidas;
  String sTotalConta;
  String sqtotalPessoas;
  double currentSliderValue;
  String selecionado;

  double vg;
  double dv;
  double vi;

  Body({
    Key key,@required
    this.sqtdPessoas,
    this.sqtdBebidas,
    this.spmBebidas,
    this.sTotalConta,
    this.sqtotalPessoas,
    this.currentSliderValue,
    this.selecionado,
    this.vg,
    this.dv,
    this.vi
  }) : super(key : key);

  @override
  _MyBody createState() => _MyBody(
      sqtdPessoas,
      sqtdBebidas,
      spmBebidas,
      sTotalConta,
      sqtotalPessoas,
     currentSliderValue,
     selecionado,
      vg,
      dv,
      vi
  );
}

class _MyBody extends State<Body> {

  String sqtdPessoas;
  String sqtdBebidas;
  String spmBebidas;
  String sTotalConta;
  String sqtotalPessoas;
  double currentSliderValue;
  String selecionado;

  double vg;
  double dv;
  double vi;

  _MyBody(
      this.sqtdPessoas,
      this.sqtdBebidas,
      this.spmBebidas,
      this.sTotalConta,
      this.sqtotalPessoas,
      this.currentSliderValue,
      this.selecionado,
      this.vg,
      this.dv,
      this.vi
      );

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Center(
        child:
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text(
              'DADOS',
              style: TextStyle(
                height: 1.2,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Valor total da conta: R\$' + sTotalConta.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Quantidade total de pessoas: ' + sqtotalPessoas.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Percentual de gorjeta: ' + currentSliderValue.toString() + '%',
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Consumiu bebida alcoólica? ' + selecionado.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Pessoas que beberam: ' + sqtdPessoas.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Quantidade de bebidas: ' + sqtdBebidas.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Preço de cada  bebida: R\$' + spmBebidas.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff4b4b52),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'RESULTADOS',
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff6e1a1a),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5),
              child: Text(
                'Valor total: R\$' + sTotalConta.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff026125),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Valor garçom: R\$' + vg.toString(),
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff026125),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Valor individual: R\$' + dv.toString() + ' por pessoa.',
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff026125),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Valor dos alcoólatras: R\$' + vi.toString() + ' por bêbado.',
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff026125),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                    onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                      );
                    },
                    child: Text("RESETAR")
                ),
            ),
              ),

          ],
        ),

      ),

    );

  }

}

