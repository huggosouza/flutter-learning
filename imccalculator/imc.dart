import 'dart:io';

main(){
  var weight;
  var height;

/* ------------------ WEIGHT -------------------------*/
  print("=== Type your weight: ");
  var textWeight = stdin.readLineSync();

  if(textWeight != null){
    weight = int.parse(textWeight);
  }
  else{
    print("Can't be null!");
  }

/* ------------------ HEIGHT -------------------------*/
  print("=== Type your height: ");
  var textHeight = stdin.readLineSync();

  if(textHeight != null){
    height = int.parse(textHeight);
  }
  else{
    print("Can't be null!");
  }
/* ------------------ CALC ---------------------------*/

  var calc = weight / (height * height);

  print("== Your IMC is: " + calc);

}