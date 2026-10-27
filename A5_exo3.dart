void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Le mot de passe doit avoir au moins 6 caractères.");
  }
  print("Mot de passe valide");
}
void main() {
  try {
    verifierMotdepasse("Krergvaegaere");
  } catch(e) {
    print("Erreur : $e");
  }
}