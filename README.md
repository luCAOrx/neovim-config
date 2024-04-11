## Pré requisitos

- [Neovim](https://neovim.io/)
- [python3-pynvim](https://packages.debian.org/sid/python3-pynvim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## Configurando

- Na sua home entre no diretório nvim usando o comando:
``` sh
cd ~/.config/nvim
```
se por acaso esse diretório não existir, crie-o usando o comando:
``` sh
mkdir ~/.config/nvim
```

- Clone o repositório para o diretório `~/.config/nvim`
e mova todos os arquivos para o diretório nvim com o comando:
```sh
mv ~/.config/nvim/neovim-config/* ~/.config/nvim
```
depois pode apagar o diretório `neovim-config` com o comando:
``` sh
rmdir ~/.config/nvim/neovim-config
```

- Copie todas as fontes para a o diretório `~/.fonts` com o comando:
``` sh
cp -vr ~/.config/nvim/fonts/* ~/.fonts
```
**as fontes utilizadas nesta configuração são a: `JetBrainsMonoNerdFontMonoRegular`, os glifos(ícones)
vão aparecer quando a fonte for selecionada, se por acaso for utilizar outras fontes,
utilize fontes mono espaçadas para que os glifos(ícones) apareçam
corretamente, caso contrário os glifos(ícones) vão ficar cortados pela metade.** As fontes estão
disponíveis [aqui]('https://www.nerdfonts.com/font-downloads').

- Abra o Neovim com o comando:
``` sh
nvim
```

- Instale os plugins com o comando:
``` sh
:PlugInstall
```
feche o Neovim e o reabra

Um tela abrirá instalando os LSP(Language Server Protocol)s definidos no
parâmetro 'ensure_installed' da função 'require("mason").setup({})'
no arquivo [mason.lua]('~/.config/nvim/plug/mason.lua')
feche o Neovim e o reabra, feito tudo isso, está pronto para usar.

Caso queira saber quais são as teclas de atalho clique na tecla `\` e espere 2 segundos,
um painel abrirá com as teclas mapeadas.
