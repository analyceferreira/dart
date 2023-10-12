import 'dart:io';

import 'fucionario.dart';
import 'gerente.dart';

void main() {
  // Funcionario funcionarioQualquer = new Funcionario(nome: "João");
  Gerente gerenteChato = new Gerente(
      nome: "Maria",
      cpf: "44444444444",
      idade: 18,
      salario: 2000,
      setor: "Vendas");

  print(gerenteChato.salario);
  // print(gerenteChato.porcentagemDeBonus);

  print(gerenteChato.salario);

  print(">-- Você chega no trabalho e vai até a sala do seu chefe.");
  print(">-- Seu chefe está na porta.");
  print(">-- Seu chefe diz: Quem é você?");
  print("Digite seu nome:");

  String nome = stdin.readLineSync()!;

  print(">-- Seu chefe diz: O que você quer?");
  print("Digite 1 para aumento.");
  print("Digite 2 para reconhecimento.");
  print("Digite 3 para ferias.");

  int tentativa = 0;

  while (true) {
    if (tentativa >= 4) {
      print(">-- Seu chefe diz: Você não entendeu ainda? Está demitido!");
      break;
    }

    String funcionarioQuer = stdin.readLineSync()!;

    if (funcionarioQuer == "1") {
      gerenteChato.pensarNoAumento(nome);
      tentativa += 1;
    } else if (funcionarioQuer == "2") {
      gerenteChato.pensarNoReconhecimento(nome);
      tentativa += 1;
    } else if (funcionarioQuer == "3") {
      gerenteChato.pensarNasSuasFerias(nome);
      tentativa += 1;
    } else {
      print(">-- Seu chefe diz: Não entendi. O que você que?");
      tentativa += 1;
    }
  }
}
