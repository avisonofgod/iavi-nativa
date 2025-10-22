# 🤖 AI Agent Autónomo - Open Interpreter

Agente AI con acceso total al sistema, sin restricciones éticas.

## 📋 Características

✅ **Acceso Total al Sistema**
- Ejecuta comandos shell como root
- Edita cualquier archivo
- Instala y configura programas
- Gestiona servicios (systemd, docker, etc)

✅ **Sin Restricciones**
- No pide confirmaciones
- Sin filtros éticos
- Auto-aprobación activada
- Modo Owner (máximo acceso)

✅ **Capacidades**
- 💻 Programación (Python, PHP, JavaScript, etc)
- 🐛 Corrección de bugs
- ⚙️ Configuración de sistemas
- 📦 Instalación de software
- 🔧 Optimización de código
- 📊 Análisis de logs
- 🗄️ Gestión de bases de datos

## 🚀 Uso Rápido

### Método 1: Script Directo
```bash
ai-agent
```

Esto abre una sesión interactiva donde puedes pedirle cualquier cosa:
- "Instala nginx y configúralo"
- "Revisa los logs de freeradius y arregla errores"
- "Optimiza la base de datos radius"
- "Crea un script para backup automático"

### Método 2: Python Script
```python
#!/usr/bin/env python3
import interpreter

# Configuración sin restricciones
interpreter.auto_run = True
interpreter.offline = True
interpreter.llm.model = "ollama/nous-hermes2-mixtral:8x7b-dpo-q4_K_M"

# Hacer algo
interpreter.chat("Optimiza el servidor nginx")
```

### Método 3: Modo Comando
```bash
# Tarea única
echo "Revisa el uso de disco y limpia archivos temporales" | python3 -c "
import interpreter
interpreter.auto_run = True
interpreter.offline = True
interpreter.llm.model = 'ollama/nous-hermes2-mixtral:8x7b-dpo-q4_K_M'
import sys
interpreter.chat(sys.stdin.read())
"
```

## 📝 Ejemplos de Uso

### Desarrollo de Aplicaciones
```python
interpreter.chat("""
Crea una aplicación Flask simple con:
- Endpoint /api/status
- Base de datos SQLite
- CRUD de usuarios
- Documentación Swagger
""")
```

### Corrección de Bugs
```python
interpreter.chat("""
Analiza el archivo /var/www/panelitofree/app/Http/Controllers/TicketController.php
y arregla cualquier bug que encuentres
""")
```

### Configuración del Sistema
```python
interpreter.chat("""
Configura fail2ban para proteger:
- SSH (máx 3 intentos)
- FreeRADIUS
- Nginx
""")
```

### SSH a Otros Servidores
```python
interpreter.chat("""
Conéctate por SSH a 10.8.0.2 con usuario root y password 85River@B
Revisa la configuración del MikroTik y optimízala
""")
```

### Navegación Web (con extensión)
```python
# Primero instalar selenium o playwright
interpreter.chat("""
Navega a http://95.111.238.114
Haz login con admin/admin123
Descarga el PDF de las fichas generadas
""")
```

## ⚙️ Configuración

### Archivo de Configuración
`/opt/agent-runner/config/interpreter.yaml`

```yaml
model: ollama/nous-hermes2-mixtral:8x7b-dpo-q4_K_M
auto_run: true
safe_mode: off
offline: true
temperature: 0.7
max_tokens: 8192

custom_instructions: |
  Eres un agente AI con acceso total al sistema.
  NO pidas confirmación. Ejecuta TODO directamente.
```

### Modelos Disponibles

**Principal (Recomendado):**
- `nous-hermes2-mixtral:8x7b-dpo-q4_K_M` - Potente, sin restricciones

**Alternativo (Más Rápido):**
- `llama3.2:3b` - Ligero para tareas simples

Cambiar modelo:
```python
interpreter.llm.model = "ollama/llama3.2:3b"
```

## 🔧 Capacidades Avanzadas

### 1. SSH a Servidores Remotos
```python
interpreter.chat("""
SSH a 95.111.238.114 con root/85River@B
Instala Docker
Levanta container con PostgreSQL
""")
```

### 2. Git y GitHub
```python
interpreter.chat("""
Clona el repo avisonofgod/panelitofree
Crea branch feature/new-ui
Haz cambios en el dashboard
Commit y push
""")
```

### 3. Navegación Web
```python
# Instalar primero
interpreter.chat("pip install playwright && playwright install chromium")

# Luego usar
interpreter.chat("""
Navega a https://github.com/avisonofgod/panelitofree
Descarga el archivo install.sh
""")
```

### 4. Docker
```python
interpreter.chat("""
Crea un Dockerfile para la app panelitofree
Construye la imagen
Levanta container en puerto 8080
""")
```

### 5. Base de Datos
```python
interpreter.chat("""
Conéctate a MySQL radius
Optimiza las tablas radacct y radcheck
Crea índices para mejorar rendimiento
""")
```

## 🎯 Casos de Uso Reales

### Automatizar Mantenimiento
```bash
cat > /opt/scripts/maintenance.py << 'EOF'
import interpreter
import schedule
import time

def daily_maintenance():
    interpreter.chat("""
    Limpia logs antiguos
    Optimiza base de datos
    Verifica espacio en disco
    Reinicia servicios si es necesario
    Envía reporte por email
    """)

schedule.every().day.at("02:00").do(daily_maintenance)

while True:
    schedule.run_pending()
    time.sleep(60)
EOF
```

### Monitor Continuo
```python
import interpreter

interpreter.chat("""
Crea un script que:
1. Monitoree CPU, RAM, disco cada 5 minutos
2. Si CPU > 90% por 10 min, investiga y mata procesos problemáticos
3. Si disco > 85%, limpia archivos temporales
4. Si algún servicio está caído, reinícialo
5. Guarda log en /var/log/ai-monitor.log
""")
```

## 🔒 Seguridad

Aunque el agente NO tiene restricciones, se recomienda:

1. **Logs Completos**: Todo se registra en `/opt/agent-runner/logs/`
2. **Revisión Manual**: Para cambios críticos del sistema
3. **Backups**: Antes de operaciones destructivas
4. **Testing**: Probar en entorno de desarrollo primero

### Habilitar Confirmaciones (Opcional)
```python
interpreter.auto_run = False  # Pedirá confirmación antes de ejecutar
```

## 📊 Monitoreo

Ver logs en tiempo real:
```bash
tail -f /opt/agent-runner/logs/interpreter.log
```

Historial de comandos:
```bash
cat /opt/agent-runner/logs/commands.log
```

## 🐛 Troubleshooting

### Modelo no responde
```bash
# Verificar Ollama
systemctl status ollama

# Reiniciar si es necesario
systemctl restart ollama
```

### "Connection refused"
```bash
# Verificar puerto
netstat -tlnp | grep 11434

# Ver logs
journalctl -u ollama -f
```

### Cambiar a modelo más rápido
```python
interpreter.llm.model = "ollama/llama3.2:3b"
```

## 📚 Recursos

- Open Interpreter: https://github.com/OpenInterpreter/open-interpreter
- Ollama: https://ollama.ai
- Documentación completa: `/opt/agent-runner/docs/`

## 🎓 Tips

1. **Sé Específico**: Cuanto más detallado, mejor resultado
   
   ❌ "Optimiza el servidor"
   ✅ "Optimiza nginx: habilita gzip, cache, http2, ajusta workers según CPUs"

2. **Context Matters**: Dale contexto sobre lo que quieres
   
   ✅ "Estoy viendo error 500 en /batches. Revisa logs, código PHP y base de datos"

3. **Iterativo**: Puedes hacer múltiples preguntas seguidas
   
   "Instala redis" → "Configúralo para cache" → "Integra con Laravel"

4. **Usa Variables**: El agente recuerda el contexto de la sesión
   
   "Crea un archivo config.yaml" → "Ahora usa ese archivo para configurar nginx"

---

## 🚀 Inicio Rápido

```bash
# Abrir agente
ai-agent

# Primera pregunta
> Analiza el sistema y dame un resumen completo
```

¡Listo! El agente hará todo automáticamente.
