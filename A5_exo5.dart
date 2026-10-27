import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() => "Erreur le est négatif";
}
void main() {
  try {
    print("Entrez un nombre: ");
    String? texte = stdin.readLineSync();
    var nombre = int.parse(texte!);

    if (nombre < 0) {
      throw NombreNegatifException();
    }
    var carre = nombre * nombre;
    print("Le carre du nombre est: $carre");
  }
    on FormatException catch(e) {
    print("Erreur de format: ${e.message}"); 
  }
  on NombreNegatifException catch(e) {
    print(e);
  }
  finally {
    print("Fin d'opération");
  }
}