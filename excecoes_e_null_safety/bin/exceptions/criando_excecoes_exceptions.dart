class NomeDaMinhaPrimeiraExcecaoException implements Exception {
  String mensagem = "Minha Primeira Exceção";
  String informacaoRecebidaNaCriacaoDoObjetoDaExcecao;

  void metodoQualquerSeQuiser() {}

  NomeDaMinhaPrimeiraExcecaoException(
      this.informacaoRecebidaNaCriacaoDoObjetoDaExcecao);
  // O objeto da classe do tipo Exception será criada pela palavra "throw".
}

class NomeDaMinhaSegundaExcecaoException implements Exception {
  String mensagem = "Minha Segunda Exceção";

  void metodoQualquerSeQuiser() {}
}

class NomeDaMinhaTerceiraExcecaoException implements Exception {
  String mensagem = "Minha Terceira Exceção";

  void metodoQualquerSeQuiser() {}
}
