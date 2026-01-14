#!/bin/bash
# 🚀 Setup SUPREME do servidor Spigot 1.21.8
# Um único arquivo que cria tudo: pastas, configs e OP

echo "🔥 Criando servidor SUPREME..."

# 1️⃣ Cria pastas principais
mkdir -p plugins logs world world_nether world_the_end playerdata

# 2️⃣ Aceita EULA automaticamente
echo "eula=true" > eula.txt

# 3️⃣ Cria server.properties básico
cat > server.properties <<EOL
motd=Servidor SUPREME do yCaiozinhu
enable-command-block=true
max-players=20
online-mode=false
level-name=world
EOL

# 4️⃣ Cria ops.json com OP
cat > ops.json <<EOL
[{"uuid":"00000000-0000-0000-0000-000000000000","name":"yCaiozinhu","level":4,"bypassesPlayerLimit":false}]
EOL

# 5️⃣ Cria arquivos padrão do Spigot/Bukkit (vazios, só pra GitHub)
touch bukkit.yml spigot.yml

echo "✅ Servidor SUPREME pronto!"
echo "Pastas criadas: plugins, logs, world, world_nether, world_the_end, playerdata"
echo "yCaiozinhu já tem OP."
echo "Coloque spigot.jar na pasta e rode o server normalmente."
