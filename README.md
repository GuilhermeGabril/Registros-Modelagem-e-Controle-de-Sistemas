# Engenharia de Controle — Modelagem, Identificação e Sintonia PID

Este repositório centraliza todos os artefatos técnicos, analíticos e didáticos desenvolvidos para as atividades acadêmicas e laboratoriais de Engenharia de Controle. O projeto abrange desde a modelagem matemática e análise de estabilidade até a validação prática via simulação computacional.

## 🚀 Conteúdo do Repositório

* **`/Imagens-slides`**: Acervo de capturas de tela, gráficos de resposta temporal, diagramas do Xcos e figuras utilizadas na construção do material visual.
* **`/Material do Professor`**: Roteiros de experimentos, especificações de projetos, parâmetros de plantas e diretrizes fornecidas para o desenvolvimento das atividades.
* **`/Relatorio e Slides`**: Relatório técnico completo com as resoluções das atividades (incluindo a validação analítica por Routh-Hurwitz) e os arquivos de apresentação estruturados em LaTeX.
* **`/Scliba e Xcos`**: Arquivos de simulação de malha fechada (`.zcos`), diagramas de blocos dinâmicos e scripts de suporte desenvolvidos no ambiente Scilab/Xcos.

## 🛠️ Tecnologias Utilizadas

* **Scilab / Xcos (v2026)** — Simulação dinâmica, análise de sistemas lineares e resposta em frequência.
* **LaTeX** — Redação de documentos com alto rigor matemático e diagramação de apresentações.
* **Git / GitHub** — Controle de versão, documentação e gerenciamento de código.

## 📈 Resumo dos Resultados Principais

* **Ganho Crítico Analítico e Simulado:** $K_{cr} = 5,9000$
* **Período Crítico Obtido:** $P_{cr} \approx 6,5504\text{ s}$ (Analítico) | $6,5900\text{ s}$ (Experimental via Xcos)
* **Aproximação de Smith (Atividade 10):** Identificação de sistema de 2ª ordem validada numericamente com um erro quadrático residual de $\text{MSE} = 4,605051 \times 10^{-4}$.

---
*Desenvolvido por Guilherme Rodrigues Cler Gabril como parte do portfólio técnico de Engenharia de Computação.*
