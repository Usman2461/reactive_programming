import 'dart:async';
import 'package:reactive_programming/src/blocs/validators.dart';

class Blocs extends Object with Validators{

final StreamController _emailStreamController = new StreamController<String>();
final StreamController _passwordStreamController = new StreamController<String>();

StreamController get emailStreamController{
  return _emailStreamController;
}

StreamController get passwordStreamController{
  return _passwordStreamController;
}

Function(String )get changeEmail {
  return _emailStreamController.sink.add;
}

Function(String) get changePassword {
  return _passwordStreamController.sink.add;
}

 Stream<dynamic>get emailError{
  return _emailStreamController.stream.transform(validator);
}
Stream<dynamic>get passwordError{
  return _passwordStreamController.stream.transform(passwordValidator);
}


dispose()
{
  _emailStreamController.close();
  _passwordStreamController.close();
}


}

final blocInstance = Blocs();