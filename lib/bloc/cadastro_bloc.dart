import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stream_games/bloc/validator_cadastro.dart';

class CadastroBloc extends BlocBase with CadastroValidator{

  final _emailController = BehaviorSubject<String>();
  final _cpfController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outCpf => _cpfController.stream.transform(validateCpf);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassword);

  Stream<bool> get outSubmitValid => Rx.combineLatest3(
      outEmail, outPassword, outCpf, (a, b, c) => true
  );

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changeCPF => _cpfController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  @override
  void dispose(){

  _emailController.close();
  _cpfController.close();
  _passwordController.close();
}


}