import 'dart:math';

import '../office/fucionario.dart';

class Gerente extends Funcionario {
  String nome;

  Gerente(
      {required String this.nome,
      required String setor,
      required String cpf,
      required int idade,
      required double salario})
      : super(
            cargo: "Gerente",
            cpf: cpf,
            idade: idade,
            nome: nome,
            salarioBase: salario,
            setor: setor,
            porcentagemDeBonus: 0.2) {}

  void pensarNoAumento(nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);

    if (possibilidade == 41) {
      print(">-- Seu chefe diz: $nomeDoInfeliz vou pensar no seu aumento.");
    } else {
      print(">-- Seu chefe diz: Infeliz pare de gastar meu tempo.");
    }
  }

  void pensarNoReconhecimento(nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);

    if (possibilidade == 49) {
      print(
          ">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce merece infeliz.");
    } else {
      print(">-- Seu chefe diz: Reconhecimento? Pare de gastar meu tempo.");
    }
  }

  void pensarNasSuasFerias(nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);

    if (possibilidade == 2) {
      print(
          ">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce tem direito infeliz.");
    } else {
      print(
          ">-- Seu chefe diz: Voce merece, mas estamos com poucas pessoas. Infeliz pare de gastar meu tempo.");
    }
  }
}
