// 1. Definir a variável complexa 's'
s = poly(0, 's');

// 2. Definir o Polinômio Característico (Denominador da Malha Fechada obtido no passo b)
P = s^3 + 1.8*s^2 + 0.92*s + 0.64;

// 3. Comando do Scilab para construir a Matriz de Routh-Hurwitz
matriz_RH = routh_t(P)

// 4. Exibir a matriz de forma organizada no console
disp("Matriz de Routh-Hurwitz gerada:");
disp(matriz_RH);
