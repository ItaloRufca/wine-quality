#!/bin/bash

echo "⏳ Iniciando publicação do projeto wine-quality..."

# Acessar a pasta
cd "/Volumes/HD_Ext_Ital/Italo/wine-quality" || exit

# Converter notebook para HTML
echo "📄 Convertendo wine-quality.ipynb para HTML..."
jupyter nbconvert --to html wine-quality.ipynb

# Criar README.md
echo "📝 Criando README.md..."

cat <<EOF > README.md
# Wine Quality Analysis 🍷

Análise exploratória e visual do dataset de vinhos, focando em identificar padrões e variáveis que influenciam na qualidade do vinho. Projeto originalmente desenvolvido no Kaggle e agora versionado no GitHub.

---

## 🔍 Sobre o projeto

Este notebook utiliza Python (Pandas, Matplotlib, Seaborn, etc.) para analisar as correlações entre características físico-químicas dos vinhos e sua qualidade sensorial.

---

## 📂 Arquivos

- \`wine-quality.ipynb\`: Notebook Jupyter com todo o código e gráficos.
- \`wine-quality.html\`: Versão estática navegável do notebook.
- \`.gitignore\`: Arquivos ignorados no versionamento.

---

## 🖥 Visualização online

Você pode visualizar o notebook direto aqui:

👉 [Visualizar wine-quality.html](https://github.com/ItaloRufca/wine-quality/blob/main/wine-quality.html)

> ⚠️ Dica: clique no botão **"Raw"** e use o botão direito + "Salvar como..." para abrir localmente no navegador.

---

## 👨‍💻 Como executar localmente

Requisitos:
- Python 3.8+
- Jupyter Notebook

Instale os pacotes com:

\`\`\`bash
pip install -r requirements.txt
\`\`\`

E execute com:

\`\`\`bash
jupyter notebook wine-quality.ipynb
\`\`\`

---

## ✍️ Autor

Feito por [@ItaloRufca](https://www.linkedin.com/in/italo-rufca)
EOF

# Git add, commit, push
echo "📤 Fazendo commit e push..."
git add .
git commit -m "Adiciona versão HTML e README automático"
git push

echo "✅ Projeto publicado com sucesso!"

