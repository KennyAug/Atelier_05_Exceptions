import 'dart:io';

void main() {
  try {
    print("Entrez votre âge : ");
    String? texte = stdin.readLineSync();
    var age = int.parse(texte!);
    print ("votre âge est: $age");
  } on FormatException catch (e) {
    print("Format non valide: ${e.message}");
  } finally {
    print("Fin d'opération");
  }
}