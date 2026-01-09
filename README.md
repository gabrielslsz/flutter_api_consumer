# Flutter API Consumer

Aplicação Flutter desenvolvida com o objetivo de **consumir uma API REST pública**, exibindo dados em tela de forma assíncrona e organizada, seguindo boas práticas de estruturação de projeto.

## 📱 Funcionalidades

- Consumo de API REST via HTTP
- Listagem de dados em tempo real
- Tratamento de estados (loading e erro)
- Arquitetura separada por responsabilidades (Model, Service e UI)

## 🌐 API Utilizada

- **JSONPlaceholder**
- Endpoint:
https://jsonplaceholder.typicode.com/posts

markdown
Copy code

API gratuita, ideal para testes e protótipos.

## 🛠️ Tecnologias Utilizadas

- Flutter
- Dart
- HTTP package
- Material Design

## 📂 Estrutura do Projeto

lib/
├── models/
│ └── post_model.dart
├── services/
│ └── post_service.dart
├── pages/
│ └── home_page.dart
└── main.dart

bash
Copy code

## ▶️ Como executar o projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/flutter_api_consumer.git
Acesse a pasta do projeto:

bash
Copy code
cd flutter_api_consumer
Instale as dependências:

bash
Copy code
flutter pub get
Execute a aplicação:

bash
Copy code
flutter run