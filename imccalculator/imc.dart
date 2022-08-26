import 'dart:io';

main(){

/* ------------------ WEIGHT -------------------------*/
  print("=== Type your weight: ");
  var weight = stdin.readLineSync();
  var dWeight = double.parse(weight!);

/* ------------------ HEIGHT -------------------------*/
  print("=== Type your height: ");
  var height = stdin.readLineSync();
  var dHeight = double.parse(height!);

/* ------------------ CALC ---------------------------*/

  var calc = dWeight / (dHeight * dHeight);
  

  print("== Your IMC is: ${calc}");
}