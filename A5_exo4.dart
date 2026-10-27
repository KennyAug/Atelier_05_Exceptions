class MotdepasseCourtException implements Exception {
  @override
  String toString() =>
  "Le mot de passe doit avoir au moins 6 caractères";
}
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
  print("Mot de passe valide");
}

void main() {
  try {
    verifierMotdepasse("gbjjeqewbwbebiiWW");
  } on MotdepasseCourtException catch(e) {
    print(e);
  }
}