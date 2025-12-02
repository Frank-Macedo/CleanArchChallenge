# 📦 Order System – Clean Architecture Challenge

Este projeto faz parte de um **desafio da Pós-Graduação em Golang da FullCycle**, com o objetivo de aplicar conceitos de **Clean Architecture** **(REST, gRPC e GraphQL)**.

O desafio consiste em implementar o **use case de listagem de orders**, expondo a funcionalidade por diferentes interfaces.

---

## 🎯 Objetivo do Desafio

Implementar a listagem de **Orders** através de:

- ✅ **REST API** → `GET /order`
- ✅ **gRPC Service** → `ListOrders`
- ✅ **GraphQL Query** → `ListOrders`

Além disso, o projeto deve:

- Utilizar **Docker** para subir a infraestrutura
- Criar e executar **migrations**
- Disponibilizar um arquivo `api.http` com exemplos de requisições
- Seguir os conceitos de **Clean Architecture**

---

## 🧱 Tecnologias Utilizadas

- 🐹 **Golang**
- 🐬 **MySQL**
- 🐳 **Docker & Docker Compose**
- 📦 **gRPC**
- 🧠 **GraphQL (gqlgen)**
- 🌐 **REST (net/http)**
- 📄 **SQL Migrations**

---

## 🚀 Como executar o projeto

### 🔹 Pré-requisitos

Certifique-se de ter instalado:

- Docker
- Docker Compose
---

## 🔹 Inicializando a infraestrutura e a aplicação

```bash
docker compose up -d
```

---

## 🌐 Portas dos serviços

| Serviço        | Porta  |
|---------------|--------|
| REST API      | 8000   |
| gRPC          | 50051  |
| GraphQL       | 8080   |

Logs esperados:

```
Starting web server on port :8000
Starting gRPC server on port 50051
Starting GraphQL server on port 8080
```

---

## 📡 Interfaces disponíveis

### ✅ REST API

```
GET /order
```

Exemplo disponível em `api.http`

---

### ✅ gRPC

Service: `ListOrders`  
Porta: `50051`

---

### ✅ GraphQL

Endpoint:

```
http://localhost:8080/graphql
```

Query exemplo:

```graphql
query {
  listOrders {
    id
    price
    tax
    finalPrice
  }
}
```

---

## 📄 Arquivos importantes

- `api.http`
- `docker-compose.yaml`
- `migrations/`
- `cmd/ordersystem/`
- `internal/`

---

## 🧠 Conceitos Aplicados

- Clean Architecture
- Separation of Concerns
- Dependency Inversion
- Reuso de Use Cases
- Multi-transport (REST, gRPC e GraphQL)

---

✌️ Desenvolvido como parte do desafio da Pós-Graduação em Golang – FullCycle
