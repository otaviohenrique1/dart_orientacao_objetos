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
