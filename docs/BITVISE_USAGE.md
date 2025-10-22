# 🖥️ Usar AI Agent con Bitvise SSH

## Problema

Bitvise SSH no asigna un pseudo-terminal (PTY) por defecto, por lo que `ai-agent` interactivo no funciona.

## ✅ Solución: Comando `ai`

Usa el comando `ai` para ejecutar peticiones directas:

```bash
ai "tu petición aquí"
```

## 📝 Ejemplos de Uso

### Información del Sistema
```bash
ai "muestra el uso de memoria"
ai "dame información del sistema"
ai "muestra el espacio en disco"
ai "lista los 10 procesos que más CPU consumen"
```

### Gestión de Archivos
```bash
ai "lista archivos en /var/log"
ai "muestra el contenido de /etc/hostname"
ai "encuentra archivos .conf en /etc"
ai "crea un directorio llamado backup en /root"
```

### Instalación de Software
```bash
ai "instala nginx"
ai "instala y configura mysql"
ai "actualiza todos los paquetes del sistema"
```

### Programación
```bash
ai "crea un script Python que muestre la fecha actual"
ai "escribe un programa bash para hacer backup de /etc"
ai "genera un script que monitoree el uso de CPU"
```

### Análisis de Logs
```bash
ai "analiza /var/log/syslog y muestra los últimos errores"
ai "encuentra errores en los logs de nginx"
ai "muestra las últimas 20 líneas de auth.log"
```

### Configuración de Servicios
```bash
ai "configura nginx para escuchar en puerto 8080"
ai "reinicia el servicio de mysql"
ai "muestra el estado de todos los servicios"
```

## 💡 Tips

1. **Comillas importantes**: Siempre usa comillas para tu petición
   ```bash
   ai "muestra memoria"  # ✅ Correcto
   ai muestra memoria    # ❌ Incorrecto
   ```

2. **Sé específico**: Cuanto más claro, mejor
   ```bash
   ai "lista"                          # ❌ Vago
   ai "lista archivos en /var/log"     # ✅ Específico
   ```

3. **Comandos complejos**: Puedes pedir tareas elaboradas
   ```bash
   ai "instala nginx, configúralo en puerto 80, crea un virtual host para example.com y habilita SSL"
   ```

4. **Sin confirmación**: El agente ejecuta todo automáticamente

## 🎯 Flujo de Trabajo Típico

```bash
# 1. Conectar con Bitvise
ssh root@95.111.238.114

# 2. Ejecutar comandos
ai "muestra el estado del servidor"
ai "actualiza el sistema"
ai "instala docker"

# 3. Tareas complejas
ai "crea un script de backup que copie /var/www a /backup y lo comprima"
```

## 🔄 Alternativa: Modo Interactivo

Si necesitas modo interactivo, usa:

```bash
# Desde Bitvise, abre una terminal con PTY habilitado
# O usa tmux:
tmux
ai-agent  # Ahora funciona en modo interactivo
```

## ❓ Ayuda

Sin argumentos, muestra la ayuda:
```bash
ai
```
