// Limpando o ambiente
clear;
clc;

// Definindo a variável complexa 's'
s = poly(0, 's');

// Função de Transferência da Atividade 3
G = 1 / (5*s^2 + 3*s + 1);

// Criando o sistema linear contínuo
sys = syslin('c', G);

// Configurando a janela gráfica (fundo branco)
figure('BackgroundColor', [1 1 1]);

// Plotando o Diagrama de Bode
bode(sys, 0.01, 10); // Varre a frequência de 0.01 rad/s até 10 rad/s

// Calculando analiticamente as margens de estabilidade
[gm, f_gm] = g_margin(sys); // Margem de Ganho (gm) e frequência de cruzamento de fase
[pm, f_pm] = p_margin(sys); // Margem de Fase (pm) e frequência de cruzamento de ganho

// Convertendo a Margem de Ganho para Decibéis (dB)
gm_db = 20*log10(gm);

// Exibindo os resultados das Margens no Console do Scilab
printf("\n=== MARGENS DE ESTABILIDADE EM MALHA ABERTA ===\n");
if gm == %inf then
    printf("Margem de Ganho (GM): Infinitos dB (O sistema nunca cruza -180 graus)\n");
else
    printf("Margem de Ganho (GM): %.4f dB na frequencia %.4f rad/s\n", gm_db, f_gm*2*%pi);
end
printf("Margem de Fase (PM) : %.4f graus na frequencia %.4f rad/s\n", pm, f_pm*2*%pi);
printf("===============================================\n");
