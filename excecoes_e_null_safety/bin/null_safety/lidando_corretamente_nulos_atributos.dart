/// Lidando com nulos a nível de atributos de classes:
/// Motivação: alguns atributos podem conter nulos (parâmetros opcionais no construtor, o que implica em atributos podendo receber
/// valor nulo).
class Lidando {
  String? nome;

  // Caso 1: Usar operador bang no momento da utilização do atributo
  void verificaNome() {
    if (nome != null) {
      print(nome!.length);
    } else {
      print("nome é nulo!");
    }
  }

  // Caso 2: Fazer do atributo uma variável local:

  // Caso 3: Safe Call
  void usandoSafeCall() {
    print(nome?.length);
  }
}
