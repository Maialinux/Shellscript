#!/bin/bash

# Faz download do kernel
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.7.tar.xz

# Cria pasta
mkdir linux-kernel-6.1.7

# Descompacta kernel redirecinando para dentro da pasta linux-kernel-6.1.7  
tar xvf linux-6.1.7.tar.xz -C linux-kernel-6.1.7/ --strip-components=1

cd linux-kernel-6.1.7/

# Instalar as dependencias
apt install build-essential rsync gcc bc bison flex libssl-dev libncurses6-dev libelf-dev

# Fazer backup do arquivo config que está dentro do /boot para se der algum problema voltar a configuração
# original do seu sistema.
cp /boot/config-$(uname -r) ./.config

# O kernel pega informaçoes básicas do seu sistema e configura automaticamente
make localmodconfig

# Faz do kernel compilado um pacote .deb
make deb-pkg

# Instala o o pacote .deb contendo o novo kernel 
dpkg -i linux-*.deb