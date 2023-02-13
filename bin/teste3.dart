// void main(List<String> arguments) {
// print("Ola mundo!");
// String nome = 'Laranja';
// double peso = 100.2;
// String cor = "Verde e Amarela";
// String sabor = "Doce e cítrica";
// int diasDesdeColheita = 40;
// bool isMadura = funcEstaMadura(diasDesdeColheita);
// print(isMadura);
// print(funcEstaMadura(diasDesdeColheita));
// print(peso);
// print(sabor);
// mostrarMadura(nome, diasDesdeColheita);
// mostrarMadura2(nome, diasDesdeColheita, cor: cor);
// mostrarMadura3(nome, diasDesdeColheita, cor: cor);
// mostrarMadura4(nome: nome, dias: diasDesdeColheita, cor: cor);
// print(funcQuantosDiasMadura(diasDesdeColheita));

//   FrutaTeste3 fruta1 =
//       FrutaTeste3("Laranja", 100.2, "Verde e Amarela", "Doce e cítrica", 40);
//   FrutaTeste3 fruta2 = FrutaTeste3("Uva", 40, "Roxa", "Doce", 20);

//   print(fruta1.nome);
//   print(fruta2.nome);
//   fruta1.estaMadura(30);
//   fruta2.estaMadura(60);
// }

class FrutaTeste3 {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  FrutaTeste3(
      this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela esta madura? $isMadura");
  }
}

/* Parametros Obrigatórios */
void mostrarMadura(String nome, int dias) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

/* Parametros Nomeados Opcionais */
void mostrarMadura2(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

/* Parametros com "Padrão" */
void mostrarMadura3(String nome, int dias, {String cor = "sem cor"}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
  print("A $nome é $cor");
}

/* Parametros com Modificador "required" */
void mostrarMadura4(
    {required String nome, required int dias, required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
  print("A $nome é $cor");
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}
