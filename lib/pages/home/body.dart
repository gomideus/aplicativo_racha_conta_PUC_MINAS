
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:racha_conta/constants.dart';
import 'package:racha_conta/pages/secondPage/secondroute.dart';


class Body extends StatefulWidget {

  @override
  _MyBody createState() => _MyBody();
}

class _MyBody extends State<Body> {

  double currentSliderValue = 10;
  TextEditingController valorConta = new TextEditingController();
  TextEditingController qtdtPessoas = new TextEditingController();

  String sTotalConta;
  String sqtotalPessoas;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Center(
          child:
          Column(

            children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
              info_1,
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
              'Valor Total da Conta',
              style: TextStyle(
                height: 1.2,
                color: Color(0xff2d2d34),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            width: 60,
            child: TextField(
              controller: valorConta,
              textAlign: TextAlign.center,
              onChanged: (text){
                sTotalConta = text;
              },
              decoration:
              InputDecoration(
                hintText: 'R\$0.00',
                alignLabelWithHint: true,
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Quantidade de Pessoas',
              style: TextStyle(
                height: 1.2,
                color: Color(0xff2d2d34),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            width: 25,
            child: TextField(
              controller: qtdtPessoas,
              textAlign: TextAlign.center,
              onChanged: (text){
                sqtotalPessoas = text;
              },
              decoration:
              InputDecoration(
                hintText: '0',
                alignLabelWithHint: true,
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              'Percentual de Gorjeta',
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
            padding: const EdgeInsets.only(top: 15),
            child: Slider(
              value: currentSliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: currentSliderValue.round().toString(),
              onChanged: (double value) {
              setState(() {
              currentSliderValue = value;
            });
            },
            ),
          ),

          Text(currentSliderValue.toString() + '%'),

          Padding(
          padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        width: 120,
        height: 40,
        child: ElevatedButton(



            onPressed: (){

              if( sTotalConta != null && sqtotalPessoas != null) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      SecondRoute(
                          sTotalConta: sTotalConta,
                          sqtotalPessoas: sqtotalPessoas,
                          currentSliderValue: currentSliderValue
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
            child: Text("PRÓXIMO")
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

}
