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

/* ------------------- CALC ------------------------- */
  var calc = (dWeight / (dHeight * dHeight)).truncateToDouble();
  print("== Your IMC is: $calc");

  if (calc <= 16.0) {
    print("Low weight level 3");
  } else if(calc <= 16.9) {
    print("Low weight level 2");
  }
  else if(calc <= 18.5){
    print("Low weight level 1");
  }
  else if(calc <= 24.9){
    print("Ideal weight");
  }
  else if(calc > 25.0){
    print("Overweight");
  }
  else if(calc > 30.0){
    print("Obesity level 1");
  }
  else if(calc > 35.0){
    print("Obesity level 2");
  }
  else if(calc > 39.9){
    print("Obesity level 3");
  }
}