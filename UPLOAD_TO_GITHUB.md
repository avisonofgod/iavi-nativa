# 📤 Cómo Subir a GitHub

El repositorio está listo. Sigue estos pasos desde tu servidor:

## Opción 1: Desde el Servidor (Recomendado)

```bash
# Conectar al servidor
ssh root@95.111.238.114

# Ir al directorio
cd /root/proyectos/aiagent

# Crear repo en GitHub (usando tu cuenta)
gh repo create avisonofgod/aiagent --public --source=. --remote=origin --push

# O manualmente:
gh repo create avisonofgod/aiagent --public
git remote add origin https://github.com/avisonofgod/aiagent.git
git push -u origin master
```

## Opción 2: Crear Repo Web y Push

1. Ve a https://github.com/new
2. Nombre: `aiagent`
3. Público
4. Sin README, .gitignore o LICENSE (ya los tenemos)
5. Crear

Luego desde el servidor:

```bash
cd /root/proyectos/aiagent
git remote add origin https://github.com/avisonofgod/aiagent.git
git push -u origin master
```

## Verificar

Una vez subido, visita:
https://github.com/avisonofgod/aiagent

✅ Listo!
