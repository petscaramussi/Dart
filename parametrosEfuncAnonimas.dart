//Função como parametro
String exibirDados(String nome, Function funcao){
  print("Olá, $nome");
  funcao();
}

void calcularBonus(){
  print("Bonus calculado...");
}

class Animal{
  String cor;

  //construtor
  Animal(){
    
  }

  /*construtor simplificado
  Animal(this.cor);*/

  //construtor nomeado
  Animal.jabuti(this.cor){
    print("construtor do Jabuti");
  }

  void dormir(){
    print("Dormindo...");
  }
}

//herança
class Cao extends Animal{
  String corOrelha;

  void latir(){
    print("latindo");
  }
}

//GETTER E SETTER

class Conta{
  double _saque = 0;

  double get saque{
    return this._saque;
  }

  set saque(double saque){
    if(saque > 0 && saque <= 500){
      this._saque = saque;
    }
  }
}

void main() {

  //teste Get e Set
  Conta conta = Conta();
  conta.saque = 400;
  print(conta.saque);



  /*instancia
  Animal animal = new Animal();
  animal.dormir();
  print(animal.cor);*/
  //instancia outro construtor
  Animal animal = new Animal.jabuti("Marrom");
  animal.dormir();
  print(animal.cor);

  //teste de herança
  Cao cao = Cao();
  cao.dormir();
  cao.latir();

  //metodo com função dentro
  exibirDados('Peterson', calcularBonus);

  //função anonima
  exibirDados('Peterson', (){ print("Calculando nada...");});
}