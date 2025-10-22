# 🖥️ Guía de Terminal Interactivo

## Opciones de Terminal

### 1. TMUX (Recomendado)

**Ventajas:**
- Sesiones persistentes
- División de pantalla
- Fácil de usar

**Uso básico:**
```bash
# Iniciar sesión tmux
tmux

# Ejecutar ai-agent
ai-agent

# Separarse (mantiene sesión activa)
Ctrl+B, luego D

# Volver a conectar
tmux attach
```

**Comandos útiles:**
- `Ctrl+B %` - Dividir ventana verticalmente
- `Ctrl+B "` - Dividir ventana horizontalmente
- `Ctrl+B ←→↑↓` - Navegar entre paneles
- `Ctrl+B D` - Desconectar (detach)
- `tmux ls` - Listar sesiones
- `tmux kill-session` - Cerrar sesión

### 2. Screen

**Uso básico:**
```bash
# Iniciar screen
screen

# Ejecutar ai-agent
ai-agent

# Separarse
Ctrl+A, luego D

# Volver a conectar
screen -r
```

### 3. SSH con TTY (Simple)

```bash
# Conectar con terminal interactivo
ssh -t root@95.111.238.114

# Ejecutar agente
ai-agent
```

## Ejemplos de Flujo de Trabajo

### Trabajo Largo con TMUX

```bash
# 1. Conectar al servidor
ssh root@95.111.238.114

# 2. Iniciar tmux
tmux new -s aiagent

# 3. Ejecutar agente
ai-agent

# 4. Trabajar normalmente...

# 5. Cuando necesites salir
Ctrl+B, D  # Desconectar sin cerrar

# 6. Volver más tarde
ssh root@95.111.238.114
tmux attach -t aiagent
```

### Múltiples Tareas

```bash
# Sesión con 2 paneles
tmux

# Panel 1: AI Agent
ai-agent

# Dividir pantalla (Ctrl+B %)
# Panel 2: Monitoreo
htop

# O logs
tail -f /var/log/syslog
```

## Subir Repositorio a GitHub

```bash
# Con TMUX (recomendado)
ssh root@95.111.238.114
tmux
cd /root/proyectos/aiagent
./push-to-github.sh

# Simple
ssh -t root@95.111.238.114
cd /root/proyectos/aiagent
./push-to-github.sh
```

## Tips

1. **Sesiones persistentes**: Usa tmux/screen para trabajos largos
2. **Múltiples ventanas**: tmux permite dividir la pantalla
3. **Auto-reconexión**: Si pierdes conexión, la sesión tmux sigue activa
4. **Nombres de sesión**: `tmux new -s nombre` para identificar fácil
