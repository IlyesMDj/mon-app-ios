# Mon App (iOS)

App iOS en SwiftUI, écrite sous Windows et compilée en `.ipa` par un Mac de GitHub Actions.

## Comment ça marche

1. Tu modifies le code dans `MonApp/` (fichiers `.swift`).
2. Tu fais un `git push` sur `main`.
3. GitHub Actions compile l'app sur macOS (`.github/workflows/build-ipa.yml`) et publie `MonApp.ipa` (non signé) dans l'onglet **Actions**, section *Artifacts* du run.

Pour récupérer le dernier `.ipa` depuis ce dossier :

```
gh run download --name MonApp-ipa --dir dist
```

## Installer sur l'iPhone (depuis Windows)

1. Installer **iTunes** (version du site d'Apple, pas celle du Microsoft Store) et **Sideloadly** (sideloadly.io).
2. Brancher l'iPhone en USB et accepter « Faire confiance à cet ordinateur ».
3. Dans Sideloadly : glisser `dist/MonApp.ipa`, entrer ton identifiant Apple, cliquer **Start**.
4. Sur l'iPhone : **Réglages → Général → VPN et gestion de l'appareil** → faire confiance à ton identifiant Apple.
5. Sur iOS 16 et plus : activer **Réglages → Confidentialité et sécurité → Mode développeur**, puis redémarrer.

Avec un identifiant Apple gratuit, l'app expire au bout de **7 jours** : il suffit de la réinstaller avec Sideloadly. Trois apps maximum à la fois.
