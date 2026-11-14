# GB4Fun - Servidor Portátil de Gunbound Thor's Hammer

Servidor de **Gunbound Thor's Hammer** portátil e pronto para ligar e jogar com amigos, com jogo/cliente incluso e suporte a criação automática de contas.

---

## 🚀 Como Iniciar o Servidor

1. Execute o arquivo **`Ligar Servidor.bat`** como Administrador.
2. Na primeira vez, ele irá verificar os pré-requisitos (Python, WinRAR e dependências).
3. O terminal mostrará o **IP do servidor**.
4. Seus amigos devem abrir o navegador e acessar esse IP:
   ```
   http://<IP-DO-SERVIDOR>/
   ```
5. A página do **GB4Fun** irá gerar o cliente configurado com o IP atual. Basta baixar, descompactar e entrar no jogo!
6. **Criação de Conta:** É automática! Ao abrir o jogo, basta digitar qualquer login e senha que a conta será criada instantaneamente no primeiro acesso.

---

## 🌐 Como Jogar Online Grátis com Amigos (Sem Pagar Domínio)

Você não precisa pagar domínio nem VPS para jogar online com seus amigos:

### Método Recomendado: Radmin VPN
1. Baixe e instale o [Radmin VPN](https://www.radmin-vpn.com/br/) (100% gratuito e rápido).
2. Crie uma rede (ex.: `GB4Fun - Senha: 123`).
3. Seus amigos entram na mesma rede no Radmin VPN.
4. Ao ligar o servidor, use o seu IP virtual do Radmin VPN (ou insira no arquivo `IP.txt`).
5. Seus amigos acessam `http://<SEU-IP-RADMIN>/` pelo navegador, baixam o cliente e jogam!

---

## 🎮 Como Jogar com Controle / Gamepad (via Steam)

Como o Gunbound é um clássico de PC, a maneira mais prática e compatível de jogar no controle (Xbox, PlayStation ou genéricos) é usando a **Steam**:

1. Abra a **Steam** no seu computador.
2. No menu superior, clique em **Jogos** > **Adicionar um jogo não-Steam à minha biblioteca...**
3. Clique em **Procurar** e selecione o executável do Gunbound na pasta do jogo.
4. Na sua biblioteca Steam, clique com o botão direito no Gunbound > **Propriedades** > aba **Controle** > Selecione **"Ativar a entrada Steam"**.
5. Clique no ícone de controle para personalizar a disposição dos botões:

### Layout Recomendado:
* **D-Pad (Direcional Digital):**
  * `Esquerda` / `Direita`: Andar
  * `Cima` / `Baixo`: Regular ângulo da mira
* **Botão A (ou ✕ no PlayStation):** Barra de Espaço (`Space`) — Segurar para força e soltar para atirar
* **Botão X / Y (ou □ / △):** Tecla `Tab` — Alternar entre Tiro 1, Tiro 2 e SS
* **Botões de Ombro (L1 / R1):** Teclas `F1` e `F2` — Usar itens
* **Analógico Direito:** Mover Cursor do Mouse (para menus e salas)
* **Clique no Analógico Direito (R3):** Clique Esquerdo do Mouse
* **Start:** Tecla `Enter` (abrir chat / confirmar)
* **Select / Back:** Tecla `Esc` (abrir opções / voltar)

---

## ⌨️ Comandos dentro do Jogo

Digite `/help` no chat para ver os comandos disponíveis:

* `/help` = Exibe a lista de comandos
* `/jogar` ou `/start` = Iniciar a partida forçadamente (mesmo sozinho)
* `/genero [m/f]` = Altera o gênero do avatar (m = masculino, f = feminino)
* `/mobile [0 a 18]` = Escolhe o mobile:
  * `0` = Armor | `1` = Mage | `2` = Nak | `3` = Trico | `4` = Bigfoot
  * `5` = Boomer | `6` = Raon | `7` = Lightning | `8` = J.D | `9` = A.Sate
  * `10` = Ice | `11` = Turtle | `12` = Grub | `13` = Aduka | `17` = Dragon | `18` = Knight
* `/guild [NOME]` = Altera o nome da sua Guild / Clã
* `/avatar` = Veste seu personagem com avatares aleatórios
* `/msg [mensagem]` = Envia mensagem global para todos
* `/conexao` = Testa a latência/conexão com o servidor
* `/online` = Mostra jogadores conectados no momento
* `/salvar` = Salva as informações da conta (avatares, guild, etc.)
* `/fechar` = Fecha a sala atual
* `/sair` = Sai da sala atual
* `/quit` = Fecha o jogo imediatamente

---

## 📷 Screenshots

### Servidor & Painel
![Screenshot](https://i.imgur.com/6GnlzCY.png)
![Screenshot](https://i.imgur.com/9icVXXi.png)
![Screenshot](https://i.imgur.com/fQrzmzS.png)

### Jogo / Cliente
![Screenshot](https://i.imgur.com/U0LSqSZ.png)
![Screenshot](https://i.imgur.com/Zr2yWvp.png)
![Screenshot](https://i.imgur.com/Ql8XUUe.png)
![Screenshot](https://i.imgur.com/D3iWtGu.png)
![Screenshot](https://i.imgur.com/b15z0aU.png)
![Screenshot](https://i.imgur.com/QBtDTsf.png)
![Screenshot](https://i.imgur.com/dDkAbbX.png)
![Screenshot](https://i.imgur.com/6QCwkgd.png)

---

## 🏆 Créditos
* Script base do servidor emulador Gunbound por [@jglim](https://github.com/jglim/gunbound-server).
