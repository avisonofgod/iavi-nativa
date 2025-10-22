# Configuración

## Archivo Principal

`/opt/agent-runner/config/interpreter.yaml`

## Opciones

### Modelo
```yaml
model: ollama/llama3.2:3b  # Ligero (4GB RAM)
model: ollama/llama3.2:8b  # Medio (8GB RAM)
model: ollama/nous-hermes2-mixtral:8x7b  # Potente (28GB RAM)
```

### Modo
```yaml
auto_run: true   # Sin confirmaciones
auto_run: false  # Pide confirmación

safe_mode: off   # Sin restricciones
safe_mode: on    # Modo seguro
```

### LLM
```yaml
temperature: 0.7      # Creatividad (0-1)
max_tokens: 8192      # Longitud respuesta
```

## Cambiar Modelo

```bash
# Descargar nuevo modelo
ollama pull llama3.2:8b

# Editar config
nano /opt/agent-runner/config/interpreter.yaml
```

## Variables de Entorno

```bash
export OLLAMA_HOST=http://localhost:11434
export INTERPRETER_AUTO_RUN=true
```
