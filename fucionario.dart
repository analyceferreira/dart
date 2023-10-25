abstract class Funcionario {
  String _nome = "";
  int _idade = 0;
  String _cpf = "";
  double _salarioBase = 0;
  double _salario = 0;
  String _cargo = "";
  String _setor = "";
  double _porcentagemDeBonus = 0;

  set nome(String nome) {
    this._nome = nome;
  }

  set idade(int idade) {
    this._idade = idade;
  }

  set cpf(String cpf) {
    this._cpf = cpf;
  }

  set salarioBase(double salarioBase) {
    this._salarioBase = salarioBase;
  }

  set salario(double salario) {
    this._salario = salario;
  }

  set cargo(String cargo) {
    this._cargo = cargo;
  }

  set setor(String setor) {
    this._setor = setor;
  }

  set porcentagemDeBonus(double bonus) {
    if (_cargo == "Atendente" || _cargo == "Gerente" || _cargo == "Vendedor") {
      this._porcentagemDeBonus = bonus;
    } else {
      this._porcentagemDeBonus = 0;
    }
  }

  String get nome => _nome;
  int get idade => _idade;
  String get cpf => _cpf;
  double get salarioBase => _salarioBase;
  double get salario => _salario;
  String get cargo => _cargo;
  String get setor => _setor;
  double get porcentagemDeBonus => _porcentagemDeBonus;

  Funcionario(
      {required String nome,
      required String cpf,
      required String cargo,
      required int idade,
      required double salarioBase,
      required String setor,
      required double porcentagemDeBonus}) {
    this._nome = nome;
    this._cpf = cpf;
    this._cargo = cargo;
    this._idade = idade;
    this._salarioBase = salarioBase;
    this._setor = setor;
    this._porcentagemDeBonus = porcentagemDeBonus;
    calcularSalario();
  }

  void calcularSalario() {
    _salario = _salarioBase + (_salarioBase * _porcentagemDeBonus);
  }

  void calcularNovoSalario(double aumento) {
    _salario = _salarioBase +
        (_salarioBase * _porcentagemDeBonus) +
        (_salarioBase * aumento);
  }
}
