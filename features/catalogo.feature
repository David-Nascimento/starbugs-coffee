#language: pt
@regressive
Funcionalidade: Catálogo de cafés
  Como um usuario do site, eu quero ver o catalogo de cafés na página principal
  Para que eu possa escolher e saber mais sobre os produtos disponíveis

Contexto:
  Dado que estou na página principal da Starbugs

Cenario: Acessar o catálogo
  Entao eu devo ver uma lista de cafés disponiveis


Cenario: Iniciar a compra de um café
    E desejo comprar o seguinte produto:
      | name     | Expresso Gelado |
      | price    | R$ 9,99         |
      | delivery | R$ 10,00        |
    Quando inicio a compra desse item
  Então devo ver a pagina de Checkout com os detalhes do produto
    E o valor total da compra deve ser de "R$ 19,99"

  @exception
Cenario: Café indisponivel
    E desejo comprar o seguinte produto:
      | name | Expresso Cremoso |
    Quando inicio a compra desse item
  Então devo ver um popup informando que o produto está indisponivel