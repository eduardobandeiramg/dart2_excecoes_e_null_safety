class NullSafety {
  String? nome;
}

main() {
  NullSafety exemplo = NullSafety();
  //print(exemplo.nome.length); // Mesmo inicializando "nome" isso mostra erro, pois não temos certeza que "nome" não é nulo.
  
  // Usando operador de null check ( bang (!) ):
  print(exemplo.nome!.length);
  // Isso "promete" ao dart que "nome" não é null e pode operar em cima da variável. Causará erro em tempo de execução caso seja nulo
}
