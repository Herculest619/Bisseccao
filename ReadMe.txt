Este é um código em Octave que implementa o método da bissecção para encontrar a raiz de uma função no intervalo [a,b].

A função recebe quatro parâmetros: a função que se deseja avaliar, os extremos do intervalo, e a tolerância desejada para o erro relativo. A função retorna a aproximação da raiz, o erro absoluto e o erro relativo.

O método da bissecção consiste em dividir o intervalo pela metade a cada iteração, e verificar em qual dos novos intervalos a função muda de sinal, indicando a presença de uma raiz. O método é iterativo, e continua até que o erro relativo seja menor que a tolerância desejada.

O código começa avaliando a função nos extremos do intervalo, e verifica se a função muda de sinal no intervalo. Caso contrário, a função não possui raiz no intervalo e o código emite uma mensagem de erro.

Em seguida, o código define a aproximação inicial como o ponto médio do intervalo [a,b], e calcula o erro absoluto da primeira iteração como a metade da largura do intervalo. O erro relativo da primeira iteração é definido como 1 para garantir que a condição do while seja satisfeita na primeira iteração.

O loop while é executado até que o erro relativo seja menor que a tolerância desejada. A cada iteração, a função é avaliada no ponto médio do novo intervalo. Se a função mantiver o mesmo sinal em relação ao extremo a, o novo intervalo se torna [x,b]. Caso contrário, o novo intervalo é [a,x].

A cada iteração, o código salva a aproximação anterior em x_old, atualiza a aproximação x como o ponto médio do novo intervalo, e calcula o erro absoluto e o erro relativo da iteração atual. O loop while é interrompido quando o erro relativo é menor que a tolerância desejada.

O código finaliza com a impressão do valor da aproximação, do erro absoluto e do erro relativo em cada iteração, usando a função "disp" para imprimir uma string contendo as informações desejadas.


Note que agora, além de calcular as raízes, o código também plota a função e as raízes encontradas. A linha hold on é usada para manter o gráfico atual e a linha hold off é usada para liberá-lo. A função linspace é usada para gerar um vetor de valores igualmente espaçados entre a e b, que são usados para plotar a função. A função arrayfun é usada para aplicar a função funcao a todos os valores de x_vals e gerar um vetor de valores de y. A linha plot(x_vals, y_vals, 'b') é usada para plotar a função em azul. A linha plot([a, b], [0, 0], 'k--') é usada para plotar uma linha horizontal em preto