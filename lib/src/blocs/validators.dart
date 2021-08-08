import 'dart:async';

class Validators{

  final validator = StreamTransformer<String, String>.fromHandlers(
    handleData: (emaildata, sink){
        if(emaildata.toString().contains("@"))
          {
            // ignore: top_level_function_literal_block
            sink.add(emaildata);
          }
        else{
          sink.addError("Enter a valid email");
        }
    }
  );

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (passworddata, sink){
      if(passworddata.length>3){
          sink.add(passworddata);
      }
      else{
        sink.addError("invalid password error");
      }
    }
  );

}