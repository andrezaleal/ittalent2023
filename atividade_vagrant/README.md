# Atividade de Configuração de Ambiente de Desenvolvimento com Vagrant

Nesta atividade, você aprenderá como criar ambientes de desenvolvimento utilizando o Vagrant. A atividade faz parte do bootcamp e consiste em realizar as seguintes etapas:

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes pré-requisitos instalados em sua máquina:

1. **Vagrant:** Você pode baixá-lo e instalá-lo a partir do [site oficial](https://www.vagrantup.com/downloads.html).

2. **Python:** Baixe e instale o Python em [Python.org](https://www.python.org/downloads/).

3. **Pacote Python Core win32 api:** Após a instalação do Python, instale o pacote `pywin32` executando o seguinte comando no terminal:

**Oracle VM VirtualBox:** Certifique-se de ter o VirtualBox instalado em sua máquina. Você pode obtê-lo em [VirtualBox](https://www.virtualbox.org/).

**Conta Vagrant:** Crie uma conta no [Vagrant Cloud](https://app.vagrantup.com/), onde você poderá acessar máquinas virtuais pré-configuradas.

**Token de Acesso:** Após criar sua conta no Vagrant Cloud, vá para a aba de segurança em seu perfil e gere um token de acesso. Guarde esse valor, pois precisaremos dele posteriormente.

## Atividades para Praticar/Treinar

### Atividade 1: Iniciar uma Máquina Virtual

Siga os passos do tutorial para realizar a instalação do Vagrant. Inicie uma máquina utilizando-o e acesse-a por meio do comando "vagrant ssh". Depois de acessar a máquina, você pode destruí-la.

### Atividade 2: Configurar Redirecionamento de Porta

Utilizando o mesmo Vagrant Box, inicie a máquina virtual com os pacotes do NGINX ou do Apache instalados. Configure um redirecionamento de porta (forward port) entre a máquina hospedeira e a máquina virtual (guest) na porta 8080 para a porta 80. Tente acessar o site padrão a partir do navegador usando o endereço apropriado. Depois de acessar a máquina, você pode destruí-la.

### Desafio: Criar um VagrantFile Avançado

Desenvolva um VagrantFile que atenda às seguintes características:

- Instalar os pacotes: Apache ou Nginx, htop, nano, python3.
- Realizar redirecionamento da porta 80 da máquina virtual para a porta 8080 da máquina física.
- Criar um compartilhamento de arquivos entre a máquina local e a virtual.
- Subir 2 interfaces de rede com IP’s de redes diferentes.
