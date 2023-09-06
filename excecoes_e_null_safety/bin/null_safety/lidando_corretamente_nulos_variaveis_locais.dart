/// Lidando com nulos a nível de variáveis de escopo local (como atributos de funções):

class Lidando {
// Teste de não-nulo: permitido em variáveis de escopo local.
// Se tratando de atributos, deve ser usado outras formas
  void printaTamanhoNome(String? nome) {
    if (nome != null) {
      // No caso de atributos de classes deveria ser usado o operador bang (sim, é recomendado na documentação)
      print(nome.length);
    } else {
      print("Nulo");
    }

//Teste de não-nulo com operador ternário:
    print(
        nome != null ? nome.length : "Nulo!"); // Também não pode pra atributos

// Teste de não-nulo com safe call:
    print(nome?.length); // Permitido para atributos!
  }
}
