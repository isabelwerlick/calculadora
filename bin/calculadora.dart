import 'dart:io';

void main() {
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);
  String operacao = stdin.readLineSync()!;

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

  if (operacao == '+') {
    soma();
  } else {
    if (operacao == '-') {
      subtracao();
    } else {
      if (operacao == '*') {
        multiplicacao();
      } else {
        if (operacao == '/') {
          divisao();
        }
      }
    }
  }

  switch (operacao) {
    case "+":
      soma;

    case "-":
      subtracao();

    case "*":
      multiplicacao();

    case "/":
      divisao();
      break; //significa encerrar o switch, caso contrário ele continuaria executando os próximos cases mesmo que a operação seja diferente//
  }
}
