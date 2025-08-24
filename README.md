# Rick and Morty App

Aplicativo Flutter que consome a API de Rick and Morty, exibindo personagens e detalhes individuais.

## Funcionalidades
- Listagem de personagens com imagem e nome.
- Tela de detalhes com: nome, status, espécie e imagem.
- Loading indicator enquanto os dados são carregados.
- Navegação entre a lista e os detalhes.
- Gerenciamento de estado usando `Provider` e `ChangeNotifier`.

## Estrutura
lib/
├─ main.dart # Entry point do app
├─ views/
│ ├─ home_page.dart # Lista de personagens
│ └─ character_detail_page.dart # Detalhes de cada personagem
└─ viewmodels/
└─ characters_viewmodel.dart # Lógica de fetch e estado
└─ models/
└─ characters.dart # Model do personagem

markdown
Copiar
Editar

## Pacotes utilizados
- `provider` → Gerenciamento de estado
- `http` → Requisições HTTP

## Como rodar
```bash
flutter pub get
flutter run
