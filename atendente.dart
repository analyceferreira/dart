import '../office/fucionario.dart';

class Atendente extends Funcionario {
  Atendente(
      {required String nome,
      required String cpf,
      required int idade,
      required double salario,
      required String setor})
      : super(
            cargo: "Atendente",
            cpf: cpf,
            idade: idade,
            nome: nome,
            salarioBase: salario,
            setor: setor,
            porcentagemDeBonus: 0.1) {}
}
