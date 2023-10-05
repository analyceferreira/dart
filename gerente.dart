import 'dart:math';

class Gerente {
  String? nome;

  Gerente({String? this.nome}) {}

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
