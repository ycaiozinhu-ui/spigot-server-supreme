#!/bin/bash
echo "🚀 Setup SUPREME do servidor Spigot 1.21.8"
echo "Aceita EULA e cria arquivos padrão"

# Aceita EULA
echo "eula=true" > eula.txt

# Cria pastas (se não existir)
mkdir -p plugins logs world world_nether world_the_end playerdata

# OP já configurado
cat > ops.json <<EOL
[{"uuid":"00000000-0000-0000-0000-000000000000","name":"yCaiozinhu","level":4,"bypassesPlayerLimit":false}]
EOL

# Cria server.properties padrão
cat > server.properties <<EOL
motd=servidor local do caiozinhu
enable-command-block=true
max-players=200
online-mode=false
EOL

echo "✅ Arquivos criados. Coloque spigot.jar na pasta e rode o servidor."
