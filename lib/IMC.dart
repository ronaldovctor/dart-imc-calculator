import 'dart:ffi';

class IMC {
  String _usuario;
  double _peso;
  double _altura;
  Map<String, String> _indices = {
    "16": "menor do que 16, está em magreza grave.",
    "17": "entre 16-17, está em magreza moderada.",
    "18.5": "entre 17-18.5, está em magreza leve.",
    "25": "entre 18.5-25, está saudável.",
    "30": "entre 25-30, está em sobrepeso.",
    "35": "entre 30-35, está em obesidade grau I.",
    "39": "entre 35-40, está em obesidade grau II (severa).",
    "40": "maior ou igual à 40, está em obesidade grau III (mórbida).",
  };

  IMC(this._usuario, this._peso, this._altura) {}

  double value(double peso, double altura) {
    double res = peso / (altura * altura);
    return res;
  }

  void results() {
    double imc = value(_peso, _altura);
    String res = "";

    switch (imc) {
      case < 16:
        res = _indices["16"]!;
        break;
      case < 17:
        res = _indices["17"]!;
        break;
      case < 18.5:
        res = _indices["18.5"]!;
        break;
      case < 25:
        res = _indices["25"]!;
        break;
      case < 30:
        res = _indices["30"]!;
        break;
      case < 35:
        res = _indices["35"]!;
        break;
      case < 40:
        res = _indices["39"]!;
        break;
      default:
        res = _indices["40"]!;
        break;
    }

    print("- $_usuario, você apresenta IMC $res");
  }
}
