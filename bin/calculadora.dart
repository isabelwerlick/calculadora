import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";

  void soma() {
    print('Soma: ${numeroUm + numeroDois}');
  }

  void subtracao() {
    print('Subtração: ${numeroUm - numeroDois}');
  }

  void multiplicacao() {
    print('Multiplicação: ${numeroUm * numeroDois}');
  }

  void divisao() {
    print('Divisão: ${numeroUm / numeroDois}');
  }

  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;

  }
  
  switch (operacao) {
    case "+":
      soma();

    case "-":
      subtracao();

    case "*":
      multiplicacao();

    case "/":
      divisao();
      break; //significa encerrar o switch, caso contrário ele continuaria executando os próximos cases mesmo que a operação seja diferente//
  }
}
