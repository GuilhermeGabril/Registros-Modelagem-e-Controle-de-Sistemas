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
f = figure('BackgroundColor', [1 1 1]);

// Plota o Lugar Geométrico das Raízes (LGR) sem o sgrid
f.immediate_drawing = "off";
evans(sys);
f.immediate_drawing = "on";

// Ajustando os limites dos eixos para focar na região de interesse dos polos
gca().data_bounds = [-0.6, -0.6; 0.2, 0.6]; 

// Ajustes visuais do gráfico
xtitle("Lugar Geométrico das Raízes (LGR) - Planta Atividade 3", "Eixo Real (Sigma)", "Eixo Imaginário (j*Omega)");
