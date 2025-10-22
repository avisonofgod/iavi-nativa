# 🚀 Guía Rápida

## Cómo Usar el Agente

### ✅ Forma Correcta (con TTY)

```bash
# Conectar con terminal interactivo
ssh -t root@servidor

# Ejecutar el agente
ai-agent
```

### Ejemplos de Uso

Una vez dentro del agente:

```
> Muestra el uso de disco y memoria
> Instala nginx y configúralo en el puerto 8080
> Analiza /var/log/nginx/error.log y muestra los errores más comunes
> Crea un script de backup para MySQL
```

### ❌ Error Común

Si ves este error:
```
EOFError: EOF when reading a line
KeyboardInterrupt
```

**Causa:** Intentaste ejecutar el agente sin terminal interactivo (TTY)

**Solución:** Usa `ssh -t` para conectarte:
```bash
ssh -t root@95.111.238.114
ai-agent
```

### 💡 Modo No-Interactivo

Si necesitas ejecutar comandos sin interacción:

```python
python3 << EOF
from interpreter import interpreter

interpreter.offline = True
interpreter.auto_run = True
interpreter.llm.model = "ollama/llama3.2:3b"

# Ejecutar comando directo
interpreter.chat("muestra el uso de memoria")
EOF
```

### 🔄 Comandos Especiales

- `exit` o `Ctrl+C` - Salir del agente
- `reset` - Reiniciar conversación
- `help` - Mostrar ayuda

### 📋 Tips

1. **Sé específico**: "Instala nginx en puerto 8080 con SSL" es mejor que "configura nginx"
2. **Contexto**: El agente recuerda la conversación, así que puedes iterar
3. **Comandos complejos**: El agente puede ejecutar secuencias largas automáticamente
4. **Errores**: Si algo falla, el agente intentará corregirlo solo

### 🎯 Ejemplos Prácticos

#### Desarrollo
```
> Crea una API REST con FastAPI
  - Endpoint GET /users
  - Endpoint POST /users
  - Base de datos SQLite
  - Validación Pydantic
```

#### SysAdmin
```
> Dame un reporte del sistema:
  - Uso de CPU
  - Memoria libre
  - Top 10 procesos
  - Espacio en disco
```

#### DevOps
```
> Crea un Docker Compose con:
  - PostgreSQL 15
  - Redis 7
  - Adminer
  - Red personalizada
```

## 🆘 Troubleshooting

### Agente no responde
```bash
systemctl status ollama
systemctl restart ollama
```

### Modelo no carga
```bash
ollama list
ollama pull llama3.2:3b
```

### Sin espacio
```bash
ollama list  # Ver modelos instalados
ollama rm <modelo-grande>  # Eliminar modelos pesados
```
