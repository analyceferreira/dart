import 'dart:io';

import 'atendente.dart';
import 'fucionario.dart';
import 'gerente.dart';

void main() {
  List<Funcionario> funcionariosDestaque = [];
  Funcionario funcionarioQualquer = new Atendente(
      nome: "", cpf: "11111111111", idade: 18, salario: 1000, setor: "Vendas");
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

  funcionarioQualquer.nome = stdin.readLineSync()!;

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
      bool conseguiuAumento =
          gerenteChato.pensarNoAumento(funcionarioQualquer.nome);

      if (conseguiuAumento) {
        print("Seu salario era ${funcionarioQualquer.salario}");
        funcionarioQualquer.calcularNovoSalario(0.02);
        print("Seu novo salario é ${funcionarioQualquer.salario}");

        break;
      }

      tentativa += 1;
    } else if (funcionarioQuer == "2") {
      bool conseguiuReconhecimento =
          gerenteChato.pensarNoReconhecimento(funcionarioQualquer.nome);

      if (conseguiuReconhecimento) {
        funcionariosDestaque.add(funcionarioQualquer);
        print("Agora você faz parte do grupo de destaque.");
        for (Funcionario func in funcionariosDestaque) {
          print(func.nome);
        }
      }

      tentativa += 1;
    } else if (funcionarioQuer == "3") {
      gerenteChato.pensarNasSuasFerias(funcionarioQualquer.nome);
      tentativa += 1;
    } else {
      print(">-- Seu chefe diz: Não entendi. O que você que?");
      tentativa += 1;
    }
  }
}
