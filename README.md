# Engenharia de Controle — Modelagem, Identificação e Sintonia PID

Este repositório centraliza todos os artefatos técnicos, analíticos e didáticos desenvolvidos para as atividades acadêmicas e laboratoriais de Engenharia de Controle. O projeto abrange desde a modelagem matemática e análise de estabilidade até a validação prática via simulação computacional.

## 🚀 Conteúdo do Repositório

* **`/Relatorios`**: Relatório técnico completo e memórias de cálculo em LaTeX (incluindo a validação analítica por Routh-Hurwitz para o ganho crítico $K_{cr}$ e período crítico $P_{cr}$).
* **`/Apresentacoes`**: Slides de defesa e apresentações de resultados estruturados em LaTeX (Beamer).
* **`/Simulacoes_Xcos`**: Diagramas de blocos, arquivos de simulação `.zcos` e testes dinâmicos do controlador PID sintonizado e otimizado.
* **`/Codigos_Scilab`**: Scripts de suporte para análise do Lugar Geométrico das Raízes (LGR), Diagramas de Bode e algoritmos de identificação (Método de Smith e Erro Médio Quadrático - MSE).
* **`/Material_Didatico`**: Resumos, roteiros práticos e ferramentas de suporte pedagógico para o acompanhamento de projetos.

## 🛠️ Tecnologias Utilizadas

* **Scilab / Xcos (v2025/2026)** — Simulação dinâmica e análise de sistemas lineares.
* **LaTeX** — Redação de documentos com alto rigor matemático e diagramação de slides.
* **Git / GitHub** — Controle de versão e documentação.

## 📈 Resumo dos Resultados Principais
* **Ganho Crítico Calculado/Simulado:** $K_{cr} = 5,9000$
* **Período Crítico Obtido:** $P_{cr} \approx 6,55\text{ s}$ (Analítico) | $6,59\text{ s}$ (Experimental)
* **Aproximação de Smith (Atividade 10):** Validação com precisão científica chancelada por erro quadrático residual de $\text{MSE} \approx 4,6 \times 10^{-4}$.

---
*Desenvolvido como parte do portfólio técnico de Engenharia de Computação.*