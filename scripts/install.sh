#!/bin/bash

echo "╔══════════════════════════════════════════════════╗"
echo "║   🤖 AI Agent - Instalador Automático            ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

# Verificar que se ejecuta como root
if [ "$EUID" -ne 0 ]; then 
   echo "❌ Debe ejecutarse como root"
   exit 1
fi

#1. Instalar Ollama
echo "📦 Instalando Ollama..."
if ! command -v ollama &> /dev/null; then
    curl -fsSL https://ollama.com/install.sh | sh
else
    echo "✅ Ollama ya instalado"
fi

# Iniciar servicio
systemctl start ollama
systemctl enable ollama

echo ""
echo "📦 Descargando modelo llama3.2:3b..."
ollama pull llama3.2:3b

# 2. Instalar dependencias Python
echo ""
echo "📦 Instalando Open Interpreter y dependencias..."

pip3 install --break-system-packages open-interpreter
pip3 install --break-system-packages langchain langchain-community langchain-core langgraph langchain-ollama
pip3 install --break-system-packages playwright paramiko gitpython httpx pydantic fastapi uvicorn python-dotenv rich requests beautifulsoup4 selenium

# 3. Instalar Playwright
echo ""
echo "📦 Instalando Playwright..."
playwright install chromium
playwright install-deps chromium

# 4. Crear estructura
echo ""
echo "📁 Creando estructura..."
mkdir -p /opt/agent-runner/{config,logs,workspaces}

# 5. Configuración
cat > /opt/agent-runner/config/interpreter.yaml << 'EOFCONFIG'
model: ollama/llama3.2:3b
auto_run: true
safe_mode: off
offline: true
temperature: 0.7
max_tokens: 8192

custom_instructions: |
  Eres un agente AI con acceso total al sistema.
  NO pides confirmación. Ejecutas TODO directamente.
EOFCONFIG

# 6. Copiar script ai-agent
cp scripts/ai-agent /usr/local/bin/ai-agent
chmod +x /usr/local/bin/ai-agent

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║   ✅ Instalación Completada                       ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
echo "Para usar el agente, ejecuta:"
echo "  $ ai-agent"
echo ""
