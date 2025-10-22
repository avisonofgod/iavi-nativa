# Instalación Detallada

## Requisitos Previos

- Linux (Debian/Ubuntu recomendado)
- RAM mínima: 4GB (recomendado 8GB+)
- Acceso root
- Python 3.11+
- Conexión a internet

## Proceso de Instalación

### 1. Clonar Repositorio

```bash
git clone https://github.com/avisonofgod/aiagent.git
cd aiagent
```

### 2. Ejecutar Instalador

```bash
chmod +x scripts/install.sh
./scripts/install.sh
```

### 3. Verificar Instalación

```bash
# Verificar Ollama
systemctl status ollama

# Verificar modelo
ollama list

# Probar agente
ai-agent
```

## Instalación Manual

Ver README.md para pasos detallados.

## Problemas Comunes

### Ollama no inicia
```bash
systemctl restart ollama
journalctl -u ollama -f
```

### Modelo no descarga
```bash
ollama pull llama3.2:3b --verbose
```

### Permisos
```bash
chmod +x /usr/local/bin/ai-agent
```
