# language: pt
Funcionalidade: Adicionar produto ao carrinho
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto
E depois escolher a quantidade
Para depois inserir no carrinho

  Contexto:
    Dado que eu acesse a página do produto na EBAC-SHOP

  Cenário: Seleção de cor, tamanho e quantidade obrigatórios
    Quando eu selecionar o produto "casaco"
    E colocar a cor "vermelha" o tamanho "m" e a quantidade "0"
    Então deve exibir uma mensagem de erro "quantidade inválida"

  Cenário: Apenas 10 produtos por venda válidos
    Quando eu escolher a cor "vermelha", tamanho "m"
    E a quantidade do produto "19"
    Então deve exibir uma mensagem "Quantidade inválida"

  Cenário: Botão limpar em execução
    Quando eu definir que não quero o casaco da cor "vermelha", tamanho "m"
    E a quantidade "4"
    Então deve exibir um botão de "limpar" para esvaziar o carrinho.
