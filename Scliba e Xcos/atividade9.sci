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

// Plotando o Diagrama de Nyquist
nyquist(sys);

// Ajustes visuais do gráfico
xtitle("Diagrama de Nyquist - Planta Atividade 3", "Eixo Real", "Eixo Imaginário");
