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
  } if (operacao == '-') {
    subtracao();
  }if (operacao == '*') {
    multiplicacao();
  } if (operacao == '/') {
    divisao();
    }
}
