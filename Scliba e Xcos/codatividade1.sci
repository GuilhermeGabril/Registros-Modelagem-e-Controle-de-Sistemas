// Limpeza do ambiente
clear;
clc;


// 1. Definição dos parâmetros do sistema 
m = 5;
C = 3;
K = 1;

// 2. Definição da função que representa o sistema de EDOs
function dy = massa_mola(t, y)
    dy = zeros(2,1);
    dy(1) = y(2);                  // dy1/dt = velocidade
    dy(2) = (-C*y(2) - K*y(1))/m;  // dy2/dt = aceleração
endfunction

// 3. Vetor de tempo para a simulação (0 a 35 segundos)
t = 0:0.1:35;

// 4. Simulação para cada caso de condição inicial
// Caso 1: V0 = m/2, X0 = 0
y0_1 = [0; m/2];
sol1 = ode(y0_1, 0, t, massa_mola);

// Caso 2: V0 = 0, X0 = m/4
y0_2 = [m/4; 0];
sol2 = ode(y0_2, 0, t, massa_mola);

// Caso 3: V0 = m/3, X0 = m/5
y0_3 = [m/5; m/3];
sol3 = ode(y0_3, 0, t, massa_mola);

// ==========================================
// PLOTAGEM DOS GRÁFICOS (Janelas Separadas)
// ==========================================

// --- GRÁFICO 1: CASO 1 ---
scf(1); // Cria a janela 1
plot(t, sol1(1,:), 'r-', 'LineWidth', 2);
title("Caso 1: Resposta Livre (V0 = 2.5 m/s, X0 = 0 m)", "FontSize", 3);
xlabel("Tempo (s)", "FontSize", 2);
ylabel("Deslocamento x(t) (m)", "FontSize", 2);
xgrid(5);
gca().background = 8; // Define o fundo da área do gráfico como BRANCO

// --- GRÁFICO 2: CASO 2 ---
scf(2); // Cria a janela 2
plot(t, sol2(1,:), 'b-', 'LineWidth', 2);
title("Caso 2: Resposta Livre (V0 = 0 m/s, X0 = 1.25 m)", "FontSize", 3);
xlabel("Tempo (s)", "FontSize", 2);
ylabel("Deslocamento x(t) (m)", "FontSize", 2);
xgrid(5);
gca().background = 8; // Define o fundo da área do gráfico como BRANCO

// --- GRÁFICO 3: CASO 3 ---
scf(3); // Cria a janela 3
plot(t, sol3(1,:), 'g-', 'LineWidth', 2);
title("Caso 3: Resposta Livre (V0 = 1.67 m/s, X0 = 1.0 m)", "FontSize", 3);
xlabel("Tempo (s)", "FontSize", 2);
ylabel("Deslocamento x(t) (m)", "FontSize", 2);
xgrid(5);
gca().background = 8; // Define o fundo da área do gráfico como BRANCO
