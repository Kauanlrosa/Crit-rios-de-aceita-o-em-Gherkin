#language: pt
Funcionalidade: Concluir cadastro
Como cliente da EBAC-SHOP
Quero finalizar a conclusão do cadastro
Para terminar de fazer a compra

Contexto: 
Dado que acesse a página de cadastro da EBAC-SHOP

Cenário: Cadastro obrigatório com asteriscos
Quando cadastrar o usuário "kauan009@ebac.com.br" 
E houver campos como *idade* *data de nascimento*  
Então deve ser preenchido obrigatóriamente os campos com asterisco

Cenário: email com formato inválido
Quando inserir o email "kauan_.#!@ebac.br"
Então o sistema deve exibir uma mensagem de erro: "Formato de email inválido"

Cenário: Cadastro com campos vazios
Quando cadastrar o email "kauan@ebac.com.br" 
E a senha "?" 
Então o sistema deve exibir uma mensagem de alerta "Campo (senha) vazio"

Esquema do Cenário: Conclusão de cadastro inválida
Quando deixar em branco ou inserir informações incorretas nos campos <usuario>, <idade> e <senha>
Então o o sistema deve exibir uma <mensagem> de erro

Exemplos:
|usuario|idade|senha|mensagem|
|"kauan._!33574@ebac.br"|"<idade>"|"<senha>"|"Houve um erro ao cadastrar o usuário obs: formato de email inválido, "<idade>" obrigatórios e campo <senha> vazio"
|"jorge.br*@ebac.com.br"|"23"|"<senha>"|"Houve um erro ao cadastrar o usuário obs: formato de email inválido e campo <senha> vazio"
