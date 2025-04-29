#!/bin/bash

# Pregunta al usuario el mensaje del commit
read -p "¿Cuál es el mensaje del commit? " mensaje

git add .
git commit -m "$mensaje"
git push

# Despliega la documentación en GitHub Pages
mkdocs gh-deploy --clean

echo "✅ ¡Documentación actualizada y desplegada exitosamente en GitHub Pages!"
