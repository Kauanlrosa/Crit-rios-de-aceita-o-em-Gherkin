#language: pt
Funcionalidade: Concluir cadastro
Como cliente da EBAC-SHOP
Quero finalizar a conclusão do meu cadastro
Para terminar de fazer minha compra

Contexto: 
Dado que eu acesse a página de cadastro da EBAC-SHOP

Cenário: Cadastro obrigatório com asteriscos
Quando eu cadastrar o usuário "kauan009@ebac.com.br" 
E houver campos como *idade* *data de nascimento*  
Então deve ser preenchido obrigatóriamente os campos com asterisco

Cenário: email com formato inválido
Quando eu inserir o email "kauan_.#!@ebac.br"
Então o sistema deve exibir uma mensagem de erro: "Formato de email inválido"

Cenário: Cadastro com campos vazios
Quando eu cadastrar o email "kauan@ebac.com.br" 
E a senha "?" 
Então o sistema deve exibir uma mensagem de alerta "Campo (senha) vazio"

Esquema do Cenário: Conclusão de cadastro inválida
Quando eu não digitar os campos com  <*> obrigatórios, com o <usuario> em formato inválido e campos <vazios>
Então o resultado deve ser exibir <mensagem> de erro

Exemplos:
|usuario|*idade*|senha|
|"kauan._!33574@ebac.br"|"*idade*"|"?"|"Houve um erro ao cadastrar o usuário obs: formato de email inválido, "*idade*" obrigatórios e campo (senha) vazio"
|"jorge.br*@ebac.com.br"|"*idade*"|"?"|"Houve um erro ao cadastrar o usuário obs: formato de email inválido, "*idade*" obrigatórios e campo (senha) vazio"