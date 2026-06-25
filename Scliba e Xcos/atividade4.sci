// 1. Definir a variável complexa s
s = poly(0, 's');

// 2. Definir as funções de transferência individuais
Gc = 5/3;
Gp = 1 / (5*s^2 + 3*s + 1);
H  = 6 / (5*s + 6);

// 3. Calcular a Malha Fechada pela fórmula
FT_malha_fechada = (Gc * Gp) / (1 + Gc * Gp * H);

// 4. Simplificar a expressão para exibição limpa
FT_malha_fechada = clean(FT_malha_fechada);

// Exibir resultado no console
disp("Função de Transferência em Malha Fechada:");
disp(FT_malha_fechada);
