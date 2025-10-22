# 🤖 AI Agent Autónomo - Instalación Nativa

Sistema de agente AI sin restricciones usando Open Interpreter + Ollama.

## 📋 Descripción

Agente AI autónomo que:
- ✅ Ejecuta comandos shell (root)
- ✅ Edita archivos del sistema
- ✅ Instala software
- ✅ Programa en múltiples lenguajes
- ✅ **Sin restricciones éticas**
- ✅ **Auto-aprobación** (no pide confirmación)
- ✅ **100% local** (Ollama)

## 🖥️ Especificaciones

- OS: Debian 12 / Ubuntu / CentOS
- RAM: 6 GB mínimo
- Python 3.11+
- Ollama
- Open Interpreter 0.4.3

## 🚀 Instalación Rápida

```bash
git clone https://github.com/avisonofgod/aiagent.git
cd aiagent
bash scripts/install.sh
```

## 🎯 Uso

```bash
# Conectar con terminal interactivo
ssh -t root@servidor

# Ejecutar agente
ai-agent
```

**⚠️ Importante:** Debes usar `ssh -t` para tener un terminal interactivo (TTY).

## 📚 Documentación

- [🚀 Guía Rápida](docs/QUICKSTART.md) - **Lee esto primero**
- [📦 Instalación Detallada](docs/INSTALLATION.md)
- [⚙️ Configuración](docs/CONFIGURATION.md)
- [📖 Guía de Uso](docs/USAGE.md)

## 📂 Estructura

```
aiagent/
├── scripts/install.sh      # Instalador automático
├── scripts/ai-agent        # Script de ejecución
├── config/                 # Configuración
└── docs/                   # Documentación
```

## 🔧 Resolución de Problemas

### Error: EOFError / KeyboardInterrupt

**Causa:** No hay terminal interactivo (TTY)

**Solución:**
```bash
ssh -t root@servidor  # Usar -t para TTY
ai-agent
```

Ver [docs/QUICKSTART.md](docs/QUICKSTART.md) para más detalles.

## 📝 Licencia

MIT License

## 👤 Autor

[@avisonofgod](https://github.com/avisonofgod)
