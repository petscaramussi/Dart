class Usuario{

  String nome;
  int idade;

  Usuario(this.nome, this.idade);

}


void main() {

  //List
  List<Usuario> usuarios = List();

  usuarios.add( Usuario("Peterson", 18) );
  usuarios.add( Usuario("José", 28) );
  usuarios.add( Usuario("Roberto", 32) );

  for(Usuario usuario in usuarios){
    print( "Nome: ${usuario.nome}; idade: ${usuario.idade}");
  }

  //Map
  Map<int, String> estados = Map();
  estados[1] = "São Paulo";
  estados[2] = "Minas Gerais";
  estados[3] = "Rio de Janeiro";