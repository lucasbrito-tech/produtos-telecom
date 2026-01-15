# Projeto API REST

**`Realizando consultas de Produtos e suas Categorias em um banco de dados Relacional`**

## Tecnologias utilizadas
- Java 17
- Spring Boot (com JPA, Spring Web)
- MySQL 8
- Docker / Docker Compose
- Postman

## Descrição do projeto

Este projeto tem como ideia implementar o back-end de um sistema simples de estoque. Neste estoque, há equipamentos de Telecomunicações. 

Outras aplicações, como um front-end ou um cliente HTTP, podem consultar as informações sobre um equipamento desejado, como o seu Nome, Peso, Preço e quantidade em estoque, bem como saber a que categoria(s) este produto pertence. Um mesmo produto pote pertencer a mais de uma categoria.

Também é possível listar as categorias de produtos.

A ideia deste projeto é demosntrar, de forma simples, os conceitos de consulta a banco de dados através de uma aplicação Java. 

Foi implementada uma API em Java, com recursos do framework SpringBoot, para disponibilizar endpoints de consulta aos dados presentes em um banco de dados MySql.

Neste banco de dados, há três tabelas, representando três entidades da modelagem de dados deste sistema: 
- Entidades de negócio: Produtos e Categorias
- Entidade Associativa: ProdutoCategoria

A relação entre Produtos e Categoria é N:M.

A API implementada permite consultar os dados das tabelas Produtos e Categorias.

Para tornar o projeto fácil de transportar e testar em diferentes ambientes/máquinas, a API e o Banco de dados foram adicionados a containeres docker.

## Esboço da topologia
!["topologia simples"](img/representação_projeto.png "Topologia do projeto" )


## Como testar este projeto em sua máquina:

### Pré-requisitos
- Docker
- Postman ou Web Browser

### Clonando o repositório

Crie uma pasta em seu computador, e faça o clone do projeto com o git:

```bash
git init
git clone git@github.com:lucasbrito-tech/produtos-telecom.git
```

### Subindo a aplicação

Entre no diretório raiz do projeto (o mesmo onde há o arquivo docker-compose.yml) e execute o comando abaixo no terminal:

```bash
docker-compose up --build
```

A API estará disponível em:

`http://localhost:8080`

### Testando a API

Para facilitar os testes com o Postman, importe a collection do localizada na raiz do projeto, em:

`postman/demo-api.postman_collection.json`

#### Endpoints disponíveis para teste

`GET /categories`

`GET /categories/{id}`

`GET /products`

`GET /products/{id}`


### Próximas features do projeto:

- Mais endpoints de busca de equipamentos (busca de produtos por categoria);
- Endpoints que implementam  Inserção, Atualização e Deleção de Registros nas tabelas Produtos e Categorias; 