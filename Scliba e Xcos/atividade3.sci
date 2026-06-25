clear; clc; close();

disp("=========================================================");
disp("       ANÁLISE DOS PARÂMETROS DINÂMICOS DA PLANTA        ");
disp("=========================================================");

// 1. Definição dos parâmetros físicos fornecidos
m = 5; // Massa [kg]
c = 3; // Coeficiente de amortecimento [N.s/m]
k = 1; // Constante elástica da mola [N/m]

printf("\nParâmetros Físicos Adotados:\n");
printf("Massa (m): %d kg\n", m);
printf("Amortecimento (c): %d N.s/m\n", c);
printf("Rigidez da Mola (k): %d N/m\n", k);

// 2. Criação da Função de Transferência Gp(s)
s = poly(0, 's');
num = 1;
den = m*s^2 + c*s + k;
Gp = syslin('c', num, den);

printf("\nFunção de Transferência da Planta Gp(s):\n");
disp(Gp);

// 3. Determinação dos Pólos do Sistema
polos = roots(den);
printf("\nPólos complexos conjugados calculados (s1 e s2):\n");
for i = 1:size(polos, '*')
    printf("  s%d = %.4f + j(%.4f)\n", i, real(polos(i)), imag(polos(i)));
end

// 4. Extração dos Parâmetros Típicos de Segunda Ordem
wn = sqrt(k / m);          // Frequência natural não amortecida
zeta = c / (2 * m * wn);   // Fator de amortecimento
Kp = horner(Gp, 0);        // Ganho estático (s = 0)

disp("=========================================================");
printf("Parâmetros Dinâmicos Identificados:\n");
printf("Frequência Natural (wn): %.4f rad/s\n", wn);
printf("Fator de Amortecimento (zeta): %.4f\n", zeta);
printf("Ganho Estático do Processo (Kp): %.4f\n", Kp);

// 5. Classificação Dinâmica Automática
if zeta == 0 then
    disp("Classificação: Sistema Não Amortecido");
elseif zeta > 0 & zeta < 1 then
    disp("Classificação: Sistema Subamortecido (0 < zeta < 1)");
elseif zeta == 1 then
    disp("Classificação: Sistema Criticamente Amortecido");
else
    disp("Classificação: Sistema Superamortecido (zeta > 1)");
end
disp("=========================================================");
