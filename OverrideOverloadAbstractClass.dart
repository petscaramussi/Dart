abstract class Animal{

  String cor;

  Animal(this.cor);


  void dormir(){
    print("Dormindo...");
  }

  void correr(){
    print("Correr como um");
  }
}

//herança
class Cao extends Animal{

  String corOrelha;

  //construtor
  Cao(String cor, {this.corOrelha}) : super(cor);

  void latir(){
    print("latindo");
  }

  @override
  void correr(){
    print("Correndo como um cão");
  }
}

class Passaro extends Animal{

  String corBico;

  Passaro(String cor) : super(cor);

  void voar(){
    print("Voar");
  }

  @override
  void correr(){
    super.correr();
    print("passaro");
  }
}

class Configuracoes{

    static String identificadorApp = "AJHSKOEM831JS7";

    static void configuracaoInicial(){
      print("config inicial");
    }

}



void main() {


  estados.forEach((key, value) {print("$key - $value");});

  


print(Configuracoes.identificadorApp);

Configuracoes.configuracaoInicial();

Cao cao = Cao("Marrom",corOrelha: "Preta");
cao.correr();
print(cao.cor);
print(cao.corOrelha);

Passaro passaro = Passaro("Branco");
passaro.correr();
print(passaro.cor);


Cao cao = Cao("Marrom");
print(cao.cor);

cao = Cao("Vermelha");
print(cao.cor);

 
}