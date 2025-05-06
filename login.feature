# language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP 
Quero fazer login(autenticação na plataforma)
Para visualizar os pedidos

  Contexto:
    Dado que acesse a página de login da EBAC-SHOP

  Cenário: Autenticação válida
    Quando digitar o usuário "kauan003@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir uma mensagem "Bem vindo Kauan" na tela de checkout

  Cenário: Autenticação inválida
    Quando digitar o usuário "kauan003@ebac.com.br"
    E a senha "senha@321"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
