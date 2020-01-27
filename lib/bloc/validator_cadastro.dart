import 'dart:async';

class CadastroValidator{

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains("@")){
        sink.add(email);
      } else{
        sink.addError("Insira um E-mail valido");
      }
    }
  );

  final validateCpf = StreamTransformer<String, String>.fromHandlers(
    handleData: (cpf, sink){
      if(cpf.length < 11){
        sink.add(cpf);
      } else{
        sink.addError("Digite o CPF correto");
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length < 6){
        sink.add(password);
      } else{
        sink.addError("Senha invalida! A senha só pode ser acima de 6 digitos");
      }
    }
  );
}