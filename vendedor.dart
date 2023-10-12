import '../office/fucionario.dart';

class Vendedor extends Funcionario {
  int quantVendas;
  double porcentageDaComissao;
  double comissao;
  int metaDeVendas;

  Vendedor(
      {required String nome,
      required String cpf,
      required int idade,
      required double salario,
      required String setor,
      required double this.porcentageDaComissao,
      required int this.quantVendas,
      required int this.metaDeVendas,
      required double this.comissao})
      : super(
            cargo: "Vendedor",
            cpf: cpf,
            idade: idade,
            nome: nome,
            salarioBase: salario,
            setor: setor,
            porcentagemDeBonus: 0.15) {}

  @override
  void calcularSalario() {
    if (quantVendas >= metaDeVendas) {
      salario = salarioBase +
          (salarioBase * porcentagemDeBonus) +
          (salarioBase * comissao);
    } else {
      super.calcularSalario();
    }
  }
}
