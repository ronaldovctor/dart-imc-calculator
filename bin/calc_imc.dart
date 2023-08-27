import 'package:calc_imc/IMC.dart';
import 'dart:io';

void main(List<String> arguments) {
  print("Cálculo de IMC");
  print("Digite o seu nome:");
  String name;
  try {
    name = stdin.readLineSync().toString();
    if (name == "") throw Exception();
  } catch (e) {
    return print("Digite o valor corretamente!");
  }

  print("\nDigite o sua altura: (formato 0.00)");
  double altura;
  try {
    altura = double.parse(stdin.readLineSync().toString());
  } catch (e) {
    return print("Digite o valor corretamente!");
  }

  print("\nDigite o seu peso: (formato (00.00)\n");
  double peso = 0;
  try {
    peso = double.parse(stdin.readLineSync().toString());
  } catch (e) {
    print("Digite o valor corretamente!");
  }

  IMC imc = IMC(name, peso, altura);
  imc.results();
}
