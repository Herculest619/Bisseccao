function bisseccao(funcao, a, b, tolerancia)
%   funcao: função a ser avaliada
%   a, b: extremos do intervalo
%   tolerancia: tolerância desejada para o erro relativo

%intervalo da raiz
func_a = funcao(a);
func_b = funcao(b);

%teste do intervalo
if sign(func_a) == sign(func_b)
  error("Erro: a função não muda de sinal no intervalo fornecido.");
end

%primeira iteração
x = (a + b)/2;
erro_absoluto = abs(b-a)/2;
erro_relativo = 1;

% Plot da função
x_vals = linspace(a, b, 100);
y_vals = arrayfun(funcao, x_vals);
plot(x_vals, y_vals, 'b');

hold on;
plot([a, b], [0, 0], 'k--');

while erro_relativo > tolerancia
    func_x = funcao(x);

    %Se o sinal de a=x
    if sign(func_x) == sign(func_a)
        a = x;
        func_a = func_x;

    %Se o sinal de b=x
    else
        b = x;
        func_b = func_x;
    end

    %calculo do erro absoluto e relativo
    x_old = x;
    x = (a + b)/2;
    erro_absoluto = abs(x - x_old);
    erro_relativo = erro_absoluto / abs(x);

    disp(["x = ", num2str(x), " erro_absoluto = ", num2str(erro_absoluto), " erro_relativo = ", num2str(erro_relativo)]);

    % Plot da raiz encontrada
    plot(x, 0, 'ro');
end

hold off; % Liberar o gráfico
end

