import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

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

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
        break;

      case "-":
        subtracao();
        break;

      case "*":
        multiplicacao();
        break;

      case "/":
        divisao();
        break; //significa encerrar o switch, caso contrário ele continuaria executando os próximos cases mesmo que a operação seja diferente//
    }
  }

  void getOperacao() {
    print("Digite uma operação");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }
getOperacao();


  print("Digite o segundo valor");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("O resultado da operação é:");

  calcular();
}

