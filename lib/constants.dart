import 'package:flutter/material.dart';



var info_1 = 'Informe o valor total da conta, a quantidade de pessoas que irão dividi-la e o '
    'percentual de gorjeta para o garçom.\n Depois clique em PRÓXIMO. ';

var info_2 = 'Aqueles que consumiram qualquer tipo de bebida alcoólica'
    '\n pagam a conta separadamente.';

var warning = '';

// ============   CORES    ====================

Map<int, Color> color =
{
  50:Color.fromRGBO(45,45,52, .1),
  100:Color.fromRGBO(45,45,52, .2),
  200:Color.fromRGBO(45,45,52, .3),
  300:Color.fromRGBO(45,45,52, .4),
  400:Color.fromRGBO(45,45,52, .5),
  500:Color.fromRGBO(45,45,52, .6),
  600:Color.fromRGBO(45,45,52, .7),
  700:Color.fromRGBO(45,45,52, .8),
  800:Color.fromRGBO(45,45,52, .9),
  900:Color.fromRGBO(45,45,52, 1),
};

MaterialColor appBarColor = MaterialColor(0xFF2d2d34, color);

Map<int, Color> b_color =
{
  50:Color.fromRGBO(215,208,200, .1),
  100:Color.fromRGBO(215,208,200, .2),
  200:Color.fromRGBO(215,208,200, .3),
  300:Color.fromRGBO(215,208,200, .4),
  400:Color.fromRGBO(215,208,200, .5),
  500:Color.fromRGBO(215,208,200, .6),
  600:Color.fromRGBO(215,208,200, .7),
  700:Color.fromRGBO(215,208,200, .8),
  800:Color.fromRGBO(215,208,200, .9),
  900:Color.fromRGBO(215,208,200, 1),
};

MaterialColor backgroundColor = MaterialColor(0xFFd7d0c8, b_color);
