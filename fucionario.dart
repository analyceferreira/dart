class Funcionario {
  String nome;
  int idade;
  String cpf;
  double salarioBase;
  double salario = 0;
  String cargo;
  String setor;
  double _porcentagemDeBonus = 0;

  set porcentagemDeBonus(double bonus) {
    if (cargo == "Atendente" || cargo == "Gerente" || cargo == "Vendedor") {
      this._porcentagemDeBonus = bonus;
    } else {
      this._porcentagemDeBonus = 0;
    }
  }

  double get porcentagemDeBonus => _porcentagemDeBonus;

  Funcionario(
      {required String this.nome,
      required String this.cpf,
      required String this.cargo,
      required int this.idade,
      required double this.salarioBase,
      required String this.setor,
      required double porcentagemDeBonus}) {
    this.porcentagemDeBonus = porcentagemDeBonus;
    calcularSalario();
  }

  void calcularSalario() {
    salario = salarioBase + (salarioBase * _porcentagemDeBonus);
  }
}
