import 'package:flutter/material.dart';

/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/






// esse é um comentário de linha única

/*
  Esse é um comentário em
  múltiplas linhas
*/

/// comentários de documentação podem começar com 3 barras invertidas ou /**


/// Alt Shift F para formatar o código.



/*
class HelloWorld {
    String mensagem;

    Saudacao() {
      print(mensagem);
    }
}


main(){
    var hello = HelloWorld();
    hello.mensagem = "Hello World!";
    hello.Saudacao();
}
*/


/*
String nome = 'Lucas';
    para widget Text()
ou "Lucas"

Text("Digite o seu nome: ");

"toUpperCase()"

"split()"

"lenght"


String meuNome = "Lucas";

print(meuNome.toLowerCase()); // lucas
print(meuNome.toUpperCase()); // LUCAS
print(meuNome.length);        // 5
USA O PONTO PARA CHAMAR O MÉTODO

String nome = "Lucas";
String sobrenome = "Silva";

print(nome + ' ' + sobrenome);
OU
"$variavel"

String nome = "Lucas";
String sobrenome = "Silva";
print("$nome $sobrenome"); // Lucas Silva

"${variavel.metodo}" 
String nome = "Lucas";
String sobrenome = "Silva";
print("${nome.toUpperCase()} $sobrenome"); // LUCAS Silva

int umNumero = 10;
double pi = 3.14;

bool verdade = true;
bool mentira = false;

List<int> listaDeNumeros = [1, 2, 3];
List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
List<dynamic> a = [1, 'a', 2];

List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
vogais.add('r'); // ['a', 'e', 'i', 'o', 'u', 'r']
vogais.remove('r'); // ['a', 'e', 'i', 'o', 'u']
vogais.remove('e'); // ['a', 'i', 'o', 'u']
vogais.insert(1, 'e'); //['a', 'e', 'i', 'o', 'u']
vogais.clear(); // [] <- lista vazia

List<int> lista1 = [4, 5];
List<int> lista2 = [1, 2, 3, ...lista1]; // spread operator ->...lista1 copia os elementos
List<int> lista3 = [...?lista2]; // null-aware spread operator 

List<int> lista1 = [1, 2, 3];
     List<int> lista2 = [4, 5, 6, 7];

     List<int> resultado = [...lista1, ...lista2];
List<int> lista1 = [1, 2, 3]; 
  List<int> lista2 = [4, 5 ];
 
  List<int> resultado = [...[0, ...lista1, ...lista2], 6];
print("resultado = " + resultado.toString());
}


 List<int> lista1 = [1, 2, 3]; 
  List<int> lista2 = [4, 5, 6];  
  bool condicao = false;	
  List<int> resultado1 = [...lista1, if (condicao) ...lista2];
  List<int> resultado2 = [...lista1, if (!condicao) ...lista2];	
  print(resultado1);
  print(resultado2);

  Set<int> s1 = {1, 2, 3};	
  Set<int> s2 = {3, 4, 5};	
  Set<int> resultado = {...s1, ...s2};	
  print(resultado);
  {1, 2, 3, 4, 5}


  Map<int, String> map1 = {1: 'Paulo', 2: 'Maria'};
  Map<int, String> map2 = {2: 'Pedro', 3: 'Ana'};	
  Map<int, String> resultado = {...map1, ...map2};
  print(resultado);
  {1: Paulo, 2: Pedro, 3: Ana}
  

/// collection if
List<String> listaDeCompras = ['chocolate', 'refrigerante', if(estiveremEmPromocao)];

// collection for
List<int> primeiraListaDeNumeros = [3, 4, 5, 6];
List<int> segundaListaDeNumeros = [1, 2, for(int numero in primeiraListaDeNumeros) numero]; // [1, 2, 3, 4, 5, 6];

List<int> listaDeNumeros = [1, 2, 3];
print(listaDeNumeros.length); // 3

CONJUNTOS (SETS)
Para utilizá-los, é necessário colocar um tipo antes de {}. Caso contrário, o interpretador entenderá que se trata de um Map.
var conjuntoDeNumeros = <int>{};
print(conjuntoDeNumeros is Set); // true

var outroConjuntoDeNumeros = {};
print(outroConjuntoDeNumeros is Set); // false

var letras = <String>{'a', 'a', 'b', 'b', 'c', 'c'};
print(letras); // {a, b, c}, pois elementos repetidos não importam para conjuntos
M

Map<String, dynamic> listaDeCompras = {
    'chocolates': 2,
    'refrigerantes': 4,
    'carne': 1.5 // quilos
};

// Ou através do construtor Map()
var listaDeCompras = Map();
listaDeCompras['chocolates'] = 2;
listaDeCompras['refrigerantes'] = 4;
listaDeCompras['carne'] = 1.5;

print(listaDeCompras['chocolates']); // 2



Runas
Strings em Dart são uma sequência de caracteres Unicode no formato UTF-16. Um caractere unicode é escrito da seguinte forma:
\u2665    // ♥
As runas expõe o unicode de um string e podem ser usadas para formar caracteres especiais como símbolos e emojis.
Runes coracao = Runes('\u2665');
print(String.fromCharCodes(coracao)); // ♥



double umNumero = 10.0;
double outroNumero = 4.0;
print(umNumero + outroNumero); // 14
print(umNumero ~/ outroNumero); // 2 divide o primeiro valor pelo segundo mas retorna um número inteiro, sem parte fracionada;
print(umNumero % outroNumero); // 2, pois 10 / 4 = 8, com resto = 2




Operadores de incremento
São aqueles que aumentam ou diminuem a variável em 1. São divididos em dois tipos: prefixo, que aumenta a variável e depois avalia a expressão, e postfix (como um sufixo), que só aumenta a variável após avaliar a expressão

Postfix:
variavel++;
variavel--;

Prefixo:
++variavel;
--variavel;

assignment	=    *=    /=   +=   -=   &=   ^=   etc.

bool verdade = true;
bool mentira = false;

!expressão --- inverte o valor da expressão.
print(!verdade); // false
&& --- retorna true se ambas as expressões forem verdadeiras.
print(verdade && verdade); // true
print(verdade && mentira); // false
|| --- retorna true se uma das expressões for verdadeira.
print(verdade || verdade); // true
print(verdade || mentira); // true
print(mentira || mentira); // false


List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
print(vogais.length); // 5


if(usuarioEstiverLogado) { // 1
  redirecionarParaPaginaInicial(); // 2
} else { // 3
  redirecionarParaPaginaDeLogin(); // 4
}



if(media >= 7 && frequencia > 75) {
  print("O aluno foi aprovado!");
} else {
  print("O aluno foi reprovado!");
}



if(media >= 7) { // primeira condição
  print("O aluno foi aprovado");
} else if (media >= 5 && media < 7) { // segunda condição
  print("O aluno ficou em recuperação");
} else { // qualquer outra condição
  print("O aluno foi reprovado");
}


OPERADOR TERNÁRIO
media >= 7 ? print("O aluno foi aprovado") : print("O aluno foi reprovado");

media >= 7 ? print("O aluno foi aprovado") : media >= 5 ? print("O aluno ficou em recuperação") : print("O aluno foi reprovado");

void main (){
  
  var media;
  int media_;
  media = 2;
  media_ = 3;
  var media1 =2;
  int media2 = 5;
  media >= 7 ? print("O aluno foi aprovado") : print("O aluno foi reprovado");
  print('$media_ $media1 $media2');
   
  }




void main (){
var a = 3  ;
switch(a) {
    case(2):
        print('ok1');
        break;
    
    case(3):
    print('ok2');
    break;
    default:
        print('não');
}   
  
  }



void main (){
var a = 3  ;
switch(a) {
    case(2):         print('ok1');         break;
    case(3):     print('ok2');     break;
    default:         print('não');
}   
  
  }



int contador = 0;
while(contador < 10) {
  print(contador);
  contador++;
}

Resultado:
0
1
2
3
4
5
6
7
8
9



int contador2 = 1;
do {
  print("contador2: $contador2");
  contador2++;
} while(contador2 < 1);

Resultado:
contador2: 1
EXECUTA DEPOIS É QUE CHECA A CONDIÇÃO



List<int> listaDeNumeros = [1, 2, 3, 4, 5];
for(int i = 0; i < listaDeNumeros.length; i++) {
  print(listaDeNumeros[i]);
}
//Resultado:
1
2
3
4
5

for...in:
List<int> listaDeNumeros = [1, 2, 3, 4, 5];
for(int i in listaDeNumeros) {
  print(i);
}

forEach() -- um método das listas que realiza uma ação programada
 para cada elemento em uma determinada lista:
List<int> listaDeNumeros = [1, 2, 3, 4, 5];
listaDeNumeros.forEach((numero) {
  print(numero);
});





void main(){
List<int> listaDeNumeros = [1, 2, 3, 4, 5];
for(int i in listaDeNumeros) {
  print(i);
}
  
  List<int> listaDeNumeros1 = [1, 2, 3, 4, 5];
listaDeNumeros1.forEach((numero) {
  print(numero);
});

}



CRIANDO FUNÇÃO
tipo nomeDaFuncao(parametros) {
  declarações a serem executadas
}








*/




