#!/bin/bash

echo "╔══════════════════════════════════════════════════╗"
echo "║   📤 Subir Repositorio AI Agent a GitHub         ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

# Verificar autenticación
if ! gh auth status &>/dev/null; then
    echo "⚠️  No estás autenticado en GitHub"
    echo ""
    echo "Autenticando..."
    gh auth login
    echo ""
fi

# Verificar autenticación nuevamente
if ! gh auth status &>/dev/null; then
    echo "❌ Autenticación fallida"
    exit 1
fi

echo "✅ Autenticado en GitHub"
echo ""

# Crear repositorio y subir
echo "📦 Creando repositorio avisonofgod/aiagent..."
gh repo create avisonofgod/aiagent --public --source=. --remote=origin --push

if [ $? -eq 0 ]; then
    echo ""
    echo "╔══════════════════════════════════════════════════╗"
    echo "║   ✅ Repositorio creado y subido exitosamente    ║"
    echo "╚══════════════════════════════════════════════════╝"
    echo ""
    echo "🔗 URL: https://github.com/avisonofgod/aiagent"
    echo ""
else
    echo ""
    echo "⚠️  Error al crear repositorio"
    echo ""
    echo "Alternativa manual:"
    echo "1. Crea el repo en: https://github.com/new"
    echo "2. Ejecuta:"
    echo "   git remote add origin https://github.com/avisonofgod/aiagent.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
fi
