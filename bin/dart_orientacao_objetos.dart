void main(List<String> arguments) {
  // String nome = 'Laranja';
  // double peso = 100.2;
  // String cor = "Verde e Amarela";
  // String sabor = "Doce e cítrica";
  // int diasDesdeColheita = 40;
  // bool isMadura;

  // if (diasDesdeColheita >= 30) {
  //   isMadura = true;
  // } else {
  //   isMadura = false;
  // }

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca1.printAlimento();
  banana1.printAlimento();
  macadamia1.printAlimento();
  limao1.printAlimento();

  mandioca1.cozinhar();
  banana1.estaMadura(30);
  macadamia1.fazerSuco();
  limao1.existeRefri(true);
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela esta madura? $isMadura");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome");
  }

  @override
  void assar() {
    print("Assar a fruta");
  }

  @override
  void fazerMassa() {
    print("Fazer massa com a fruta");
  }

  @override
  void separarIngredientes() {
    print("Separar as frutas ingredientes");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando!");
    } else {
      print("Nem precisa cozinhar!");
    }
  }

  @override
  void assar() {
    print("Assar");
  }

  @override
  void fazerMassa() {
    print("Fazer massa");
  }

  @override
  void separarIngredientes() {
    print("Separar os ingredientes");
  }
}

class Citricas extends Fruta {
  double nivelAzedo;
  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refri de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;
  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa(); /* Opcional */
  }
}

abstract class Bolo {
  /* 'abstract class' => Parecido com 'interface' de outras linguagens*/
  void separarIngredientes();
  void fazerMassa();
  void assar();
}
