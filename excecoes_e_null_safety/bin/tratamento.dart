import 'dart:async';
import 'dart:io';
import 'dart:js_interop';

class Tratamento{

  static late double atributo1;
  static late double atributo2;

  /// Try - on:
  /// 

  void exemploTryCatch(){

    try{
      erroDeFormato();
    } on FormatException{
      print("Formato Inválido!");
    } on IOException{
      print("Erro de entrada saída!");
    } on TimeoutException{
      print("Exceção de Time Out!");
    } on Exception{
      print("A exceção encontrada não tem tratamento específico. Reinicie o app!");
      // Essa é a exceção mãe de todas as outras. 
      // Caso tenha sido colocada como a primeira de todas, todo o código abaixo seria código morto. 
      // Isso também pode acontecer com outras exceções que são filhas de outras.
      // Ou seja, caso se trate uma exceção que é mãe de outra, sua especialização por lógica não será alcançada,
      // pois a exceção que está embaixo é um tipo da de cima e, dessa forma, será tratada acima. 
    }

  }

  /// Try - on - catch:
  /// 
  /// Neste caso, o código enfrenta uma exceção durante a execução da função erroDeFormato().
  /// Então, no "on", encontra a forma de solucionar o problema. 
  /// O on manda o codigo capturar o objeto da exceção, que possui "FormatException" como o tipo. 
  /// 
  /// O objeto possui vários atributos
  /// 
 
 void exemploTryOnCatch(){
  try{
    erroDeFormato();
  } on FormatException catch (e){
    print(e.message);
    print(e.offset);
    print(e.source);
    print(e.hashCode);
    print(e.runtimeType);
    print(e.toString());
    print(e.toJS);
    print(e.jsify());

  }
 }


}
void erroDeFormato(){
  Tratamento.atributo1 = double.parse("Aqui deveria ter um valor numérico");
}