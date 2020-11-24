void exibirDados() {
  print("Olá Peterson");
}

String exibirNome() {
  return "Olá Peterson";
}

String exibirNomeIdade(String nome, int idade) {
  return "Olá $nome, sua idade é $idade";
}

void exibirAlturaGenero(String nome, {double altura, String genero}){
  double novaAltura = altura ?? 0;
  print("Olá $nome, sua altura é $novaAltura e seu genero é $genero");
}

void main() {
  // funções, parametros e funções anonimas
  exibirDados();
  String nome = exibirNome();
  print(nome);

  String texto = exibirNomeIdade("peterson", 18);
  print(texto);

  exibirAlturaGenero("peterson",altura: 1.70, genero: 'masculino');
}