import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

/* ------------ variaveis ----------------- */

//preset botão de seleção
String holder = '01';
String botao = '01';
String botaoSelect = '01';

//Questao 1
int indice = 13, soma = 0, k = 0;
List<int> somaLista = [];

//Questao 2
int contador = 0, n = 0, n1 = 0, n2 = 1, fibo = 0;
List<int> listaFibo = [0];

String fiboConfirm = 'é um numero Fibonacci';

//Questao 3
String resposta_a = ' ___ ?';
String resposta_b = ' ___ ?';
String resposta_c = ' ___ ?';
String resposta_d = ' ___ ?';
String resposta_e = ' ___ ?';
String resposta_f = ' ___ ?';

//Questao 4

String resposta_4 = '';

//Questao 5

String palavraOriginal = '';
String palavraInvertida = '';

/*--------------- classe myapp ----------------- */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resolução de problemas',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomePage(
        title: 'Resolução de problemas',
      ),
    );
  }
}

/*--------------- homepage ----------------- */
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(child: TelaPrincipal()));
  }
}

/*-------------------Tela Principal---------------------------*/
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Text('utilize o botão para selecionar a questão: ',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                WidgetMenu(),
                SizedBox(
                  height: 50,
                ),
                Text('Avance para a proxima pagina',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
              ],
            )),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              tooltip: 'proximo',
              child: const Icon(Icons.arrow_forward),
              heroTag: 'Tag',
              onPressed: () {
                if (holder == '01') {
                  _somaIndice();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pagina01(),
                      ));
                } else if (holder == '02') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pagina02(),
                      ));
                } else if (holder == '03') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pagina03(),
                      ));
                } else if (holder == '04') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pagina04(),
                      ));
                } else if (holder == '05') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pagina05(),
                      ));
                } else {}
              }),
        ],
      ),
    );
  }
}

/* ------------------- pagina 01 ---------------------- */

class Pagina01 extends StatefulWidget {
  const Pagina01({Key? key}) : super(key: key);

  @override
  _Pagina01State createState() => _Pagina01State();
}

class _Pagina01State extends State<Pagina01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(100),
            margin: EdgeInsets.all(2),
            child: Column(
              children: [
                Text('Questão 1:',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(
                    'A lista dos numeros verificados até o resultado final : \n $somaLista',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text('valor de "soma": $soma',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            )),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(7.0),
            child: FloatingActionButton(
                tooltip: 'Home',
                child: const Icon(Icons.home),
                heroTag: 'Tag',
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                }),
          ),
        ],
      ),
    );
  }
}

/* -------------- funçao de soma -----------------*/
void _somaIndice() {
  while (k < indice) {
    k = k + 1;
    soma = soma + k;
    somaLista.add(soma);
  }
}

/* ------------------- pagina 02 ---------------------- */

class Pagina02 extends StatefulWidget {
  const Pagina02({Key? key}) : super(key: key);

  @override
  _Pagina02State createState() => _Pagina02State();
}

class _Pagina02State extends State<Pagina02> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Questão 2: \n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: myController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Digite um numero'),
                  ),
                  Text(''),
                  ElevatedButton.icon(
                      onPressed: () {
                        String textoForm = (myController.text);
                        var valor;
                        try {
                          valor = int.parse(textoForm);
                          n = valor;
                          setState(() {});
                        } catch (FormatException) {}
                        myController.clear();
                        _fibona();
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Pressione para verificar')),
                  Text(''),
                  Text(' o numero $n $fiboConfirm'),
                ],
              )),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(7.0),
              child: FloatingActionButton(
                  tooltip: 'Home',
                  child: const Icon(Icons.home),
                  heroTag: 'Tag',
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  }),
            ),
          ],
        ));
  }
}

/* ------------ função fibonacci ------------- */

void _fibona() {
  while (n > fibo) {
    if (contador <= 1) {
    } else {
      fibo = n1 + n2;
      n1 = n2;
      n2 = fibo;

      listaFibo.add(fibo);
    }
    contador += 1;
  }

  if (n == fibo) {
    fiboConfirm = "é um numero Fibonacci";
  } else if (listaFibo.contains(n)) {
    fiboConfirm = "é um numero Fibonacci";
  } else {
    fiboConfirm = "não é um numero Fibonacci";
  }
}

/* ------------------- pagina 03 ---------------------- */

class Pagina03 extends StatefulWidget {
  const Pagina03({Key? key}) : super(key: key);

  @override
  _Pagina03State createState() => _Pagina03State();
}

class _Pagina03State extends State<Pagina03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Questão 3:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ElevatedButton.icon(
                      onPressed: () {
                        _respostas();
                        setState(() {});
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Pressione para executar')),
                  Text('a) 1, 3, 5, 7,$resposta_a'),
                  Text('b) 2, 4, 8, 16, 32, 64,$resposta_b'),
                  Text('c) 0, 1, 4, 9, 16, 25, 36,$resposta_c'),
                  Text('d) 4, 16, 36, 64,$resposta_d'),
                  Text('e) 1, 1, 2, 3, 5, 8,$resposta_e'),
                  Text('f) 2,10, 12, 16, 17, 18, 19,$resposta_f'),
                ],
              )),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(7.0),
              child: FloatingActionButton(
                  tooltip: 'Home',
                  child: const Icon(Icons.home),
                  heroTag: 'Tag',
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  }),
            ),
          ],
        ));
  }
}

/*------------------ atualizar string de respostas -----------------------------*/

void _respostas() {
  resposta_a =
      ' 9 \n pois a sequencia é uma progressão arítimética com razão 2';
  resposta_b =
      ' 128 \n pois a sequencia é uma progreção geométrica com razão 2';
  resposta_c = ' 49 \n pois a sequencia segue em n^2';
  resposta_d = ' 100 \n pois a sequencia é uma razão de n = n+8';
  resposta_e = ' 13 \n pois a sequencia segue a sequencia de Fibonacci';
  resposta_f = ' 200 \n pois a ordem são numeros que começam com a letra "D"';
}

/* ------------------- pagina 04 ---------------------- */

// formula T = D/v
// 100/110 = 0,90 horas ~= 54 minutos
// 100/80 = 1,25 horas == 75 minutos + 10 dos pedágios 85 min
// 54 min a 110km/h e 85 min a 80km/h

class Pagina04 extends StatefulWidget {
  const Pagina04({Key? key}) : super(key: key);

  @override
  _Pagina04State createState() => _Pagina04State();
}

class _Pagina04State extends State<Pagina04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Questão 4:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ElevatedButton.icon(
                      onPressed: () {
                        _resposta04();
                        setState(() {});
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Pressione para mostrar resposta')),
                  Text('<-------------'),
                  Icon(Icons.car_repair),
                  Text('<-------------'),
                  Text(''),
                  Text('------------->'),
                  Icon(Icons.bus_alert),
                  Text('------------->'),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Text('$resposta_4'),
                  ))
                ],
              )),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(7.0),
              child: FloatingActionButton(
                  tooltip: 'Home',
                  child: const Icon(Icons.home),
                  heroTag: 'Tag',
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  }),
            ),
          ],
        ));
  }
}

/* ----------- Mostrar resposta 04-------------- */
void _resposta04() {
  resposta_4 =
      'O carro levaria  54 minutos na viagem, enquanto o caminhão levaria 85 minutos (arredondamento calculado  utilizando T= d/v). \n'
      'No momento que se cruzam ambos estariam no mesmo ponto, portanto tanto o carro quanto o caminhão estariam a mesma distância de Ribeirão. \n '
      'Após se cruzarem, como o carro está se afastando de Ribeirão, o caminhão passa a estar mais próximo da cidade. ';
}

/* ------------------- pagina 05 ---------------------- */

class Pagina05 extends StatefulWidget {
  const Pagina05({Key? key}) : super(key: key);

  @override
  _Pagina05State createState() => _Pagina05State();
}

class _Pagina05State extends State<Pagina05> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Questão 5: \n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: myController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Digite...'),
                  ),
                  Text(''),
                  ElevatedButton.icon(
                      onPressed: () {
                        String textoForm = (myController.text);
                        try {
                          palavraOriginal = textoForm;
                        } catch (FormatException) {}
                        myController.clear();
                        _inverter();
                        setState(() {});
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Pressione para inverter')),
                  Text(''),
                  Text('A palavra invertida é: \n'
                      '$palavraInvertida'),
                ],
              )),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(7.0),
              child: FloatingActionButton(
                  tooltip: 'Home',
                  child: const Icon(Icons.home),
                  heroTag: 'Tag',
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  }),
            ),
          ],
        ));
  }
}

/* ----------- iversor de palavras ----------- */
void _inverter() {
  List<String> palavraArray = palavraOriginal.split('');
  List<String> palavraInvertidaArray = [''];

  for (var i = palavraArray.length; i > 0; i--) {
    palavraInvertidaArray.add(palavraArray.last);
    palavraArray.removeLast();
  }
  palavraInvertidaArray.removeAt(0);

  palavraInvertida = palavraInvertidaArray.join('');
}

/* ------------------ Menu DropDown -------------------- */

class WidgetMenu extends StatefulWidget {
  const WidgetMenu({Key? key}) : super(key: key);

  @override
  State<WidgetMenu> createState() => _WidgetMenuState();
}

class _WidgetMenuState extends State<WidgetMenu> {
  String dropdownValue = '01';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
          botaoSelect = dropdownValue;
          holder = botaoSelect;
        });
      },
      items: <String>['01', '02', '03', '04', '05']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
