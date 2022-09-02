import 'dart:io';

Map<String, dynamic> cadastre = {};
void main() {
  bool condition = true;
  while (condition = true) {
    print("Type your command to the system: ");
    String command = stdin.readLineSync()!;
    if (command == "exit") {
      exit(0);
    } else if (command == "register") {
      clearTerm();
      register();
    } else if (command == "print") {
      clearTerm();
      print(cadastre);
    } else {
      print("Invalid command!");
    }
  }
}

void register() {
  clearTerm();
  print("Type your name: ");
  cadastre["name"] = stdin.readLineSync();

  clearTerm();
  print("Type your age: ");
  cadastre["age"] = stdin.readLineSync();

  clearTerm();
  print("Type your town: ");
  cadastre["town"] = stdin.readLineSync();

  clearTerm();
  print("Type your state: ");
  cadastre["state"] = stdin.readLineSync();
  ;
}

void clearTerm() {
  print("\x1B[2J\x1B[0;0H");
}
