import 'dart:io';

List<Map<String, dynamic>> cadastres = [];
void main() {
  var condition = true;
  while (condition == true) {
    print("Type 'menu' or 'exit': ");
    if (stdin.readLineSync()! == "menu") {
      print(
          "\x1B[2J\x1B[0;0H\n====== MENU ======\n1 - Add\n2 - Show last cadastre\n3 - Show all\n4 - Remove\n5 - exit");
      switch (stdin.readLineSync()) {
        case "1":
          clearTerm();
          print("Adding.");
          var name, age, city, state;
          print("Name: ");
          name = stdin.readLineSync();
          print("Age: ");
          age = stdin.readLineSync();
          print("City: ");
          city = stdin.readLineSync();
          print("State: ");
          state = stdin.readLineSync();
          register(name, age, city, state);
          break;
        case "3":
          clearTerm();
          print("Showing all.");
          cadastres.forEach((element) {
            print(element);
          });
          break;
        case "4":
          clearTerm();
          print("Removing.");
          print("Which cadastre do you want to remove ? ");
          print("0 - ${cadastres.length - 1}");
          var rmvCadindex = int.parse(stdin.readLineSync()!);
          cadastres.removeAt(rmvCadindex);
          break;
        case "5":
          print("Exiting.");
          condition = false;
          exit(0);
        default:
      }
    } else {
      condition = false;
      exit(0);
    }
  }
}

void register(name, age, city, state) {
  Map<String, dynamic> cadastre = {};
  cadastre["Name"] = name;
  cadastre["Age"] = age;
  cadastre["City"] = city;
  cadastre["State"] = state;

  cadastres.add(cadastre);
}

void clearTerm() {
  print("\x1B[2J\x1B[0;0H");
}
