
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:racha_conta/constants.dart';
import 'package:racha_conta/pages/thirdPage/thirdpage.dart';

class Body extends StatefulWidget {

  String sTotalConta;
  String sqtotalPessoas;
  double currentSliderValue;

  Body({
    Key key,@required
    this.sTotalConta,
    this.sqtotalPessoas,
    this.currentSliderValue
  }) : super(key : key);

  @override
  _MyBody createState() => _MyBody(sTotalConta, sqtotalPessoas, currentSliderValue);
}

class _MyBody extends State<Body> {

  String sTotalConta;
  String sqtotalPessoas;
  double currentSliderValue;

  _MyBody(
      this.sTotalConta,
      this.sqtotalPessoas,
      this.currentSliderValue
      );

  String selecionado;
  TextEditingController qtdPessoas = new TextEditingController();
  TextEditingController qtdBebidas = new TextEditingController();
  TextEditingController pmBebidas = new TextEditingController();

  String sqtdPessoas;
  String sqtdBebidas;
  String spmBebidas;


  void initState() {
    setState(() {
      selecionado = "Sim";
      /*
      qtdPessoas.text = "0";
      pmBebidas.text = "0";
      qtdBebidas.text = "0";
       */
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Center(
        child:
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                info_2,
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
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Alguém consumiu bebida alcoólica ?',
                style: TextStyle(
                  height: 1.2,
                  color: Color(0xff2d2d34),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Radio(
                    value: "Sim",
                    groupValue: selecionado,
                    onChanged: (String escolha){
                      setState(() {
                        selecionado = escolha;
                      });
                    },
                  ),
                  Text('Sim'),

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Radio(
                      value: "Não",
                      groupValue: selecionado,
                      onChanged: (String escolha){
                        setState(() {
                          selecionado = escolha;
                        });
                      },
                    ),
                  ),
                  Text('Não'),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Quantas pessoas beberam:',
                      style: TextStyle(
                        height: 1.2,
                        color: Color(0xff2d2d34),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextField(
                          controller: qtdPessoas,
                          textAlign: TextAlign.center,
                          onChanged: (text){
                            sqtdPessoas = text;
                          },
                          decoration:
                          InputDecoration(
                            hintText: '0',
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Quantidade de bebidas:',
                      style: TextStyle(
                        height: 1.2,
                        color: Color(0xff2d2d34),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextField(
                          controller: qtdBebidas,
                          textAlign: TextAlign.center,
                          onChanged: (text){
                            sqtdBebidas = text;
                          },
                          decoration:
                          InputDecoration(
                            hintText: '0',
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Preço de cada bebida:',
                      style: TextStyle(
                        height: 1.2,
                        color: Color(0xff2d2d34),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 30,
                      width: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextField(
                          controller: pmBebidas,
                          textAlign: TextAlign.center,
                          onChanged: (text){
                            spmBebidas = text;
                          },
                          decoration:
                          InputDecoration(
                            hintText: 'R\$0.00',
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                    onPressed: (){

                      if(
                      sTotalConta != null &&
                          sqtotalPessoas != null &&
                          sqtdPessoas != null &&
                          sqtdBebidas != null &&
                          spmBebidas != null &&
                          selecionado != null &&
                          currentSliderValue != null
                      ) {

                      double vg = _CalculateValorGarcom();
                      double dv = _DivideContaSemBebidas(vg);
                      double vi = _CalculateValorAlcoolatras(dv, vg);


                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (context) =>
                           ThirdRoute(
                               sqtdPessoas: sqtdPessoas,
                               sqtdBebidas: sqtdBebidas,
                               spmBebidas: spmBebidas,
                               sTotalConta: sTotalConta,
                               sqtotalPessoas: sqtotalPessoas,
                               currentSliderValue: currentSliderValue,
                               selecionado: selecionado,
                               vg: vg,
                               dv: dv,
                               vi: vi
                           ),
                     ),
                     );

                     setState(() {
                       warning = '';
                     });

                   }else{
                     setState(() {
                       warning = 'Preencha os dados!';
                     });
                   }
                    },
                    child: Text(
                        "FINALIZAR",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                warning,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }


  double _CalculateValorGarcom(){
    double vg;
    double total = double.tryParse(sTotalConta.toString());
    double percentual = double.tryParse(currentSliderValue.toString());
    vg = total * (percentual/100.0);
    return vg;
  }

  double _CalculateValorAlcoolatras( double dv, double vg ){

    double va;

    if(selecionado.toString() == "Sim") {
      double qtddPessoasBeberam = double.tryParse(sqtdPessoas);

      double precoBebidas = double.tryParse(spmBebidas.toString());
      double qtddBebidas = double.tryParse(sqtdBebidas.toString());
      double precoTotalBebidas = qtddBebidas * precoBebidas;

      double dividido = 0.0;

      if (dv == 0.0 && (precoTotalBebidas - vg / qtddPessoasBeberam) >= 0) {
        dividido = precoTotalBebidas - vg / qtddPessoasBeberam;
      } else {
        dividido = precoTotalBebidas / qtddPessoasBeberam;
      }

      va = dv + dividido;
    }else{
      va = 0.0;
    }

    return va;
  }

  double _DivideContaSemBebidas(double vg){

    double dv;

    double precoTotal;


    double qtddPessoas = double.tryParse(sqtotalPessoas.toString());
    double qtddPessoasBeberam = double.tryParse(sqtdPessoas);

      if( qtddPessoas - qtddPessoasBeberam > 0 ) {
        double precoBebidas = double.tryParse(spmBebidas.toString());
        double qtddBebidas = double.tryParse(sqtdBebidas.toString());
        double precoTotalBebidas = qtddBebidas * precoBebidas;

        if(selecionado.toString() == "Sim") {
              precoTotal = double.tryParse(sTotalConta.toString()) -
              precoTotalBebidas - vg;
        }else{
          precoTotal = double.tryParse(sTotalConta.toString()) - vg;
        }

        dv = precoTotal / qtddPessoas;
      }else{
        dv = 0.0;
      }

    return dv;
  }

}
