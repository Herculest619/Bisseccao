%EXEMPLO 1:
%funcao = @(x) x^2 + log(x);
%a = 0.5;
%b = 1.5;
%tolerancia = 1e-6;

%EXEMPLO 2:
%f = @(x) x.^3 - 3.*x + 1;
%a = -1;
%b = 1;
%tolerancia = 1e-6;

funcao_str = input("Insira a função: ", 's');
funcao = str2func(['@(x)' funcao_str]);

a = input("Insira o valor de a: ");

b = input("Insira o valor de b: ");

tolerancia = input("Insira a tolerância: ");

bisseccao(funcao, a, b, tolerancia);


