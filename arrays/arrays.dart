import 'dart:io';

void main() {
  String? text;
  var nome = [];

  bool condicao = true;

  while(condicao){
    print("type your name: ");
    text = stdin.readLineSync();
    if(text == "sair"){
      print("Exited!");
      break;
    } else{
      if (text != null){
        if (text == "exit") {
          exit(0);
        }
        else if (text == "showall"){
          nome.forEach((element) {
            print(element);
          });
        }
        else {
          nome.add(text);
        }
      }
      else{
        print("text can't be null");
      }
    }

    print(nome);
  }
}