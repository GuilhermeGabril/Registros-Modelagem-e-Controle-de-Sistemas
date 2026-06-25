clear; clc; close();

// 1. Definicao dos parametros fisicos e teóricos (Routh-Hurwitz)
Kcr = 5.90;                     // Ganho Critico real calculado
w_cr = 0.9592;                  // Frequencia Critica em rad/s
Pcr = 2 * %pi / w_cr;           // Periodo Critico de Oscilacao

// Definicao das Funcoes de Transferencia
s = poly(0, 's');
Gp = 1 / (5*s^2 + 3*s + 1); // Planta de segunda ordem
H = 6 / (5*s + 6);          // Sensor dinamico de primeira ordem
G_malha_aberta = Gp * H;

disp("=========================================================");
disp("        RESULTADOS DA ANÁLISE CRÍTICA DE ESTABILIDADE    ");
disp("=========================================================");
printf("Ganho Critico de Routh-Hurwitz (Kcr): %.4f\n", Kcr);
printf("Frequencia de Oscilacao Sustentada (w_cr): %.4f rad/s\n", w_cr);
printf("Periodo Critico Medido (Pcr): %.4f segundos\n", Pcr);

// 2. Calculo dos Parametros PID por Ziegler-Nichols (Tabela Classica)
Kp_zn = 0.6 * Kcr;
Ti_zn = 0.5 * Pcr;
Td_zn = 0.125 * Pcr;

Ki_zn = Kp_zn / Ti_zn;
Kd_zn = Kp_zn * Td_zn;

disp("=========================================================");
disp("        PARAMETROS SINTONIZADOS DO CONTROLADOR PID       ");
disp("=========================================================");
printf("Ganho Proporcional (Kp): %.4f\n", Kp_zn);
printf("Ganho Integrativo (Ki):  %.4f\n", Ki_zn);
printf("Ganho Derivativo (Kd):   %.4f\n", Kd_zn);
disp("=========================================================");
