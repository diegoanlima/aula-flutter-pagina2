import 'package:flutter/material.dart';

class pagina2 extends StatefulWidget {
  const pagina2({super.key});

  @override
  State<pagina2> createState() => _pagina2State();
}

class _pagina2State extends State<pagina2> {
  String _nome = '';
  String _notadigitada = '';
  String _resultado = 'fulaninho aprovado?';

  void _calcularesultado() {
    var nota = double.tryParse(_notadigitada);

    setState(() {
      if (nota != null) {
        if (nota >= 6.0) {
          _resultado = '$_nome foi aprovadissimo';
        } else {
          _resultado = '$_nome foi reprovado :(';
        }
      } else {
        _resultado = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado final:'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Nome:'),
              SizedBox(
                  width: 100,
                  child: TextField(
                    onChanged: (String valor) {
                      _nome = valor;
                      // print(_nome);
                    },
                  )),
            ],
          ),
          Row(
            children: [
              Text('Nota:'),
              SizedBox(
                  width: 100,
                  child: TextField(
                    onChanged: (String valor) {
                      _notadigitada = valor;
                      print(_notadigitada);
                    },
                  )),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _calcularesultado();
              },
              child: const Text('Resultado')),
          Row(
            children: [
              Text('$_resultado'),
            ],
          )
        ],
      ),
    );
  }
}
