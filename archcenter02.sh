#!/bin/bash

#info_pac(){
#read pkg 
#[[ ! -z $pkg ]] && sudo pacman -Si $pkg
#n1="audacious"
#echo -e "Gostaria de instar o programa?\033[32m sim/nao\033[m"
#read opc 
#case $opc in
#sim) sudo pacman -Si $n1 && sleep 3 && sudo pacman -S $n1	;;
#nao) echo "Operação cancelada pelo usuario $USER"	;;

#esac
#}

# Informar

package_info(){

clear
echo -e "\033[1;46m\033[1;31mARCH CENTER\033[1;41m                                 \033[1;37mInformações sobre programas\033[0m"
 echo -e "$lineb \033[m"
echo -e "$ldn"
        echo -e "$minline \033[0m          DIGITE O NOME DO PROGRAMA QUE DESEJA INFORMAÇÔES.         $minline"
echo -e "$lup"

        echo -e ">>>| \c"


read pkg

[[ ! -z $pkg ]] && sudo pacman -Si $pkg
echo -e "                                           \033[46m                           \033[0m"
echo -e "                                                \033[1;41m \033[0ms\033[1;41m \033[0m Sair \033[1;41m \033[0mi\033[1;41m \033[0m Inicio"

read opc
  case $opc in
   s) exit      ;;
    i) sh archcenter02.sh      ;;
esac
}

list_package(){
clear
echo -e "\033[46m                                                                   \033[0m"
echo -e "\033[40m                                                                   \033[0m"

sudo pacman -Qi

echo -e "\033[46m                                                                   \033[0m"
echo -e "                                                \033[1;41m \033[0ms\033[1;41m \033[0m Sair \033[1;41m \033[0mv\033[1;41m \033[0m Voltar"

read opc
  case $opc in
   s) exit      ;;
    i) sh archcenter.sh      ;;
esac

}


# Pesquisar

### AUR

pes_packyay(){

clear

echo -e "\033[1;46m\033[1;31mARCH CENTER\033[1;41m                                    \033[1;37mPesquizar programa (AUR)\033[0m"
 echo -e "$lineb \033[m"
echo -e "$ldn"
        echo -e "$minline \033[0m           DIGITE O NOME DO PROGRAMA QUE DESEJA PESQUIZAR.          $minline"
echo -e "$lup"

        echo -e ">>>| \c"

read pkg

[[ ! -z $pkg ]] && yay -Ss $pkg
echo -e "                                          \033[1;46m                            \033[0m"
echo -e "                                          \033[1;41m \033[0m s \033[1;41m \033[0m Sair  \033[1;41m \033[0m \033[1;41m \033[0m i \033[1;41m \033[0m Inicio"


read opc
  case $opc in
   s) exit      ;;
     i) sh archcenter02.sh      ;;
esac
}



### Repos Oficiais
pes_pack(){

clear

echo -e "\033[1;46m\033[1;31mARCH CENTER\033[1;41m                                          \033[1;37mPesquizar programa\033[0m"
 echo -e "$lineb \033[m"
echo -e "$ldn"
        echo -e "$minline \033[0m           DIGITE O NOME DO PROGRAMA QUE DESEJA PESQUIZAR.          $minline"
echo -e "$lup"

        echo -e ">>>| \c"

read pkg

[[ ! -z $pkg ]] && sudo pacman -Ss $pkg
echo -e "                                          \033[1;46m                            \033[0m"
echo -e "                                          \033[1;41m \033[0m s \033[1;41m \033[0m Sair  \033[1;41m \033[0m \033[1;41m \033[0m i \033[1;41m \033[0m Inicio"


read opc
  case $opc in
   s) exit	;;
     i) sh archcenter02.sh	;;
esac
}

# Remover pacotes

del_package(){

clear

echo -e "\033[1;46m\033[1;31mARCH CENTER\033[1;41m                                            \033[1;37mDeletar programa\033[0m"
 echo -e "$lineb \033[m"
echo -e "$ldn"
	echo -e "$minline \033[0m           DIGITE O NOME DO PROGRAMA QUE DESEJA DELETAR.            $minline"
echo -e "$lup"

	echo -e ">>>| \c"

read pkg

[[ ! -z $pkg ]] && sudo pacman -Rs $pkg
echo -e "                               \033[1;46m                                        \033[0m"
echo -e "                                    \033[1;41m \033[0m s \033[1;41m \033[0m Sair  \033[1;41m \033[0m      \033[1;41m \033[0m i \033[1;41m \033[0m Inicio"


read opc
  case $opc in
   s) exit	;;
     i) sh archcenter02.sh	;;
esac
}

#idel_package(){
#clear
#echo -e "\033[1;46m                                                                  \033[0m"
#echo -e "\033[1;40m                                                                  \033[0m"
#echo -e "          VOÇE GOSTARIA REALMENTE DE DELETAR UM PROGRAMA?"
#echo -e "\033[1;46m                                                                  \033[0m"
#echo -e "\033[1;40m                                                                  \033[0m"
#echo -e "                                                  \033[1;41m \033[0m sim \033[1;41m \033[0m  \033[1;41m \033[0m não \033[1;41m \033[0m"
#echo -e "                                                  \033[1;40m                \033[0m"
#echo -e ">>>| \c"
#read opc
#	case $opc in
#	Sim|sim) del_package	;;
#	Nao|nao) echo -e "\033[1;34m Operação cancelade pelo usuario!\033[0m\c"	;;
#esac
#sleep 3
#sh mais.sh
#}

### DDboot
ddboot(){

clear
echo -e "\033[1;46m \033[1;31mDDBOOT                                                           Version- 0.01 \033[0m"
        echo "                     SELECIONE O DISPOSITIVO QUE SERA USADO"
echo -e "\033[1;40m                                                                                \033[0m"
echo " "
echo -e "DIGITE SUA SENHA E \033[1;36mAGUARDE A LISTAGEM DE DISPOSITIVOS \033[0m!!!"
echo -e "\033[1;46m                                                          \033[0m"
echo -e "\033[1;40m                                               Powerby DCG\033[0m"

sudo fdisk -l | grep Disco | sed 's/, .*//g'

echo -e "\033[1;46m                                                                                \033[0m"
echo -e "\033[1;40m                                                                                \033[0m"
echo -e "\033[1;36mDigite apenas o identicador de discos\033[0m  \033[1;35m/dev/sd?\033[0m >>>| \c"

read disc

[[ ! -z $disc ]]

sleep 2
clear

echo -e "\033[1;46m                                                                                \033[0m"
echo -e "\033[1;46m                                                                                \033[0m"
        echo "                            QUAL ISO GOSTARIA DE USAR?"
echo -e "\033[1;40m                                                                                \033[0m"
echo -e "\033[1;40m                                                                                \033[0m"

        echo -e "\033[1;34mCOPIE E COLE A ISO AQUI\033[0m >>>| \c"


read iso

[[ ! -z $iso ]] && sudo dd if=$iso of=$disc status=progress
clear
echo -e "\033[1;46m                                                                                \033[0m"
echo -e "\033[1;46m                                                                                \033[0m"
        echo -e "         \033[1;33mTUDO PRONTO!!! VOÇE JA PODE USAR SEU DISPOSITIVO BOOTAVEL.            "
echo -e "\033[1;40m                                                                                \033[0m"
echo -e "\033[1;40m                                                                                \033[0m"
}

audio(){
# Visão geral
clear
echo -e "\033[1;46m\033[1;31mARCH STORE\033[1;41m                                                           \033[1;37mAudio e musica\033[0m"
echo -e "$lineb"
echo -e "$line"
echo -e "\033[46m                                                                                   \033[0m"
echo -e "\033[41m \033[0m 1 \033[41m \033[0m Audacious        \033[42m \033[0m Reprodutor de audio,minimalista e muito eficiente  \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 2 \033[41m \033[0m Audacity         \033[42m \033[0m Editor e criador de audios simples e funcional \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 3 \033[41m \033[0m Babe             \033[42m \033[0m Reprodutor de audio completo                   \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 4 \033[41m \033[0m Brasero          \033[42m \033[0m Crie e copie CDs e DVDs                            \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 5 \033[41m \033[0m Ciano            \033[42m \033[0m Converta arquivos multimedia                   \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 6 \033[41m \033[0m Clementine       \033[42m \033[0m Reprodutor de audio incrivel,completo, moderno \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 7 \033[41m \033[0m ClipGrab         \033[42m \033[0m Faz downloads e converte videos do YouTube     \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 8 \033[41m \033[0m Pavucontrol      \033[42m \033[0m Ajusta o volume das saidas e entradas de audio     \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 9 \033[41m \033[0m DeaDBeeF         \033[42m \033[0m Reprodutor de audio                            \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 10 \033[41m \033[0m EasyTAG         \033[42m \033[0m Edita metadados de arquivos de audio               \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 11 \033[41m \033[0m Element         \033[42m \033[0m Sequenciador avançado de elementos             \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 12 \033[41m \033[0m Elisa           \033[42m \033[0m Reprodutor simples de audio                        \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 13 \033[41m \033[0m Giada           \033[42m \033[0m Ferramenta para DJs                            \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m" 
echo -e "\033[41m \033[0m 14 \033[41m \033[0m Gnac            \033[42m \033[0m Converta arquivos de audio                     \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 15 \033[41m \033[0m GNOME-Music     \033[42m \033[0m Reprodutor de audio para GNOME                     \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 16 \033[41m \033[0m Goobox          \033[42m \033[0m Reproduza e extraia CDs                        \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 17 \033[41m \033[0m Kwave           \033[42m \033[0m Editor de som baseado nas plataformas KDE5         \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 18 \033[41m \033[0m LMMS            \033[42m \033[0m Sequenciador e sintetizador de musicas         \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 19 \033[41m \033[0m Luppp           \033[42m \033[0m Cria,grava,toca e mixa musicas                 \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 20 \033[41m \033[0m LXMusic         \033[42m \033[0m Reprodutor de musicas simples                  \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 21 \033[41m \033[0m Pantheon Music  \033[42m \033[0m Reprodutor de musicas oficial do ElementaryOS  \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 22 \033[41m \033[0m Music Deepin    \033[42m \033[0m Reprodutor de musicas do ambiente DDE          \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 23 \033[41m \033[0m Lollypop        \033[42m \033[0m Reprodutor de musicas completo                 \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 24 \033[41m \033[0m Rhythmbox       \033[42m \033[0m Reprodutor de musicas completo e moderno           \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                                                                                   \033[0m"
echo ""
echo -e "\033[1;47m\033[1;37mSELECIONE UM NUMERO\033[1;46m                                                   \033[1;46m\033[1;31mE TECLE ENTER\033[0m"
echo -e "\033[1;47m                     (info) Para informaçoes sobre programs   (i) Inicio   (S) Sair\033[0m"
echo -e ">>>|\c"


# Funções

read opc

   case $opc in 

        i) loja       ;;
        s) exit ;;
        info) package_info      ;;
1) sudo pacman -S audacious     ;;
2) sudo pacman -S audacity      ;;
3) sudo pacman -S babe  ;;
4) sudo pacman -S brasero       ;;
5) sudo pacman -S ciano ;;
6) sudo pacman -S clementine    ;;
7) sudo pacman -S clipgrab      ;;
8) sudo pacman -S pavucontrol   ;;
9) sudo pacman -S deadbeef      ;;
10) sudo pacman -S easytag      ;;
11) sudo pacman -S element      ;;
12) sudo pacman -S elisa        ;;
13) sudo pacman -S giada        ;;
14) sudo pacman -S gnac ;;
15) sudo pacman -S gnome-music  ;;
16) sudo pacman -S goobox       ;;
17) sudo pacman -S kwave        ;;
18) sudo pacman -S lmms ;;
19) sudo pacman -S luppp        ;;
20) sudo pacman -S lxmusic      ;;
21) sudo pacman -S pantheon-music       ;;
22) sudo pacman -S deepin-music ;;
23) sudo pacman -S lollypop     ;;
24) sudo pacman -S rhythmbox    ;;
   esac

audio
}
# Visao geral

video(){
clear
echo -e "\033[1;46m\033[1;31mARCH STORE\033[1;41m                                                        \033[1;37mImagens e Videos\033[0m"
echo -e "$lineb"
echo -e "$line"
echo -e "\033[46m                                                                                   \033[0m"
echo -e "\033[47m \033[0m 1 \033[41m \033[0m Avidemux         \033[42m \033[0m Editor e processador de videos                     \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 2 \033[41m \033[0m Baka MPAyer      \033[42m \033[0m Reprodutor multimedia simples                  \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 3 \033[41m \033[0m Blender          \033[42m \033[0m Poderoza ferramenta de criação e animação 3D   \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 4 \033[41m \033[0m LXImage          \033[42m \033[0m Captura a tela e visualiza imagens             \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 5 \033[41m \033[0m Celluloid        \033[42m \033[0m Poderoso reprodutor multimedia                 \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 6 \033[41m \033[0m Cheese           \033[42m \033[0m Ferramenta para a utilização de WebCams            \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 7 \033[41m \033[0m DigiKam          \033[42m \033[0m Programa para gestão de fotografis                 \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 8 \033[41m \033[0m Flameshot        \033[42m \033[0m Ferramenta simples para capturas de tela       \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 9 \033[41m \033[0m GNOME Fotos      \033[42m \033[0m Acesse, organize e compartilhe suas fotos          \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 10 \033[41m \033[0m Geeqie          \033[42m \033[0m Visualizador e gerenciador de fotos                \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 11 \033[41m \033[0m GNOME Mplayer   \033[42m \033[0m Poderozo reprodutor multimedia                 \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 12 \033[41m \033[0m Gwenview        \033[42m \033[0m Visualizador de imagens                            \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 13 \033[41m \033[0m HandBrake       \033[42m \033[0m Conversor de videos                            \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m" 
echo -e "\033[41m \033[0m 14 \033[41m \033[0m Ida             \033[42m \033[0m Visualizador de imagens                        \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 15 \033[41m \033[0m Inkscape        \033[42m \033[0m Poderozo editor de imagens                         \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 16 \033[41m \033[0m Kodi            \033[42m \033[0m Central multimedia completa                    \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 17 \033[41m \033[0m Krita           \033[42m \033[0m Pintura digital, liberdade criativa                \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 18 \033[41m \033[0m MPV             \033[42m \033[0m Reprodutor multimedia                          \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 19 \033[41m \033[0m Parole          \033[42m \033[0m Reprodutor multimedia                          \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 20 \033[41m \033[0m Peek            \033[42m \033[0m Gravador de tela facil                         \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 21 \033[41m \033[0m PhotoFlare      \033[42m \033[0m Um simples e bonito editor de imagens          \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 22 \033[41m \033[0m Pitivi          \033[42m \033[0m Crie e edite seus propios filmes               \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"   
echo -e "\033[41m \033[0m 23 \033[41m \033[0m Gimp            \033[42m \033[0m Editor de imagens (Substitue o PhotoShop)          \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 24 \033[41m \033[0m Ristretto       \033[42m \033[0m Visualizador de imagens leve e simples             \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 25 \033[41m \033[0m Shotcut         \033[42m \033[0m Editor de videos                               \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 26 \033[41m \033[0m Shotwell        \033[42m \033[0m Organizador popular de fotos                   \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 27 \033[41m \033[0m SimpleScreenRecorder   \033[42m \033[0m Poderozo gravador de videos da tela     \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 28 \033[41m \033[0m SMPlayer        \033[42m \033[0m Reprodutor multimedia                          \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 29 \033[41m \033[0m SMTube          \033[42m \033[0m Navega e faz buscas no YouTube                 \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 30 \033[41m \033[0m Totem           \033[42m \033[0m Reprodutor de videos oficial do GNOME              \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 31 \033[41m \033[0m Viewnior        \033[42m \033[0m Visualizador de imagens elegante               \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 32 \033[41m \033[0m VLC             \033[42m \033[0m Reprodutor de videos e musicas                     \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                                                                                   \033[0m"
echo ""
echo -e "\033[1;47m\033[1;37mSELECIONE UM NUMERO\033[1;46m                                                   \033[1;46m\033[1;31mE TECLE ENTER\033[0m"
echo -e "\033[1;47m                     (info) Para informaçoes sobre programs   (i) Inicio   (S) Sair\033[0m"
echo -e ">>>|\c"

# Funções
read opc
 case $opc in

        i) loja       ;;
        s) exit ;;
     info) package_info      ;;
1) sudo pacman -S avidemux-qt   ;;
2) sudo pacman -S baka-mplayer  ;;
3) sudo pacman -S blender       ;;
4) sudo pacman -S lximage-qt    ;;
5) sudo pacman -S celluloid     ;;
6) sudo pacman -S cheese        ;;
7) sudo pacman -S digikam       ;;
8) sudo pacman -S flameshot     ;;
9) sudo pacman -S gnome-photos  ;;
10) sudo pacman -S geeqie       ;;
11) sudo pacman -S gnome-mplayer        ;;
12) sudo pacman -S gwenview     ;;
13) sudo pacman -S handbrake    ;;
14) sudo pacman -S fbida        ;;
15) sudo pacman -S inkscape     ;;
16) sudo pacman -S kodi ;;      
17) sudo pacman -S krita        ;;
18) sudo pacman -S mpv  ;;
19) sudo pacman -S parole       ;;
20) sudo pacman -S peek ;;
21) sudo pacman -S photoflare   ;;
22) sudo pacman -S pitivi       ;;
23) sudo pacman -S gimp ;;
24) sudo pacman -S ristretto    ;;
25) sudo pacman -S shotcut      ;;
26) sudo pacman -S shotwell     ;;
27) sudo pacman -S simplescreenrecorder ;;
28) sudo pacman -S smplayer     ;;
29) sudo pacman -S smtube       ;;
30) sudo pacman -S totem        ;;
31) sudo pacman -S viewnior     ;;
32) sudo pacman -S vlc  ;;
  esac

video
}

produc(){
clear
echo -e "\033[1;46m\033[1;31mARCH STORE\033[1;41m                                                            \033[1;37mProdutividade\033[0m"
echo -e "$lineb"
echo -e "$line"
echo -e "\033[46m                                                                                   \033[0m"
echo -e "\033[41m \033[0m 1 \033[41m \033[0m Abiword          \033[42m \033[0m Processador de textos                              \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 2 \033[41m \033[0m Gnumeric         \033[42m \033[0m Planilha de calculos de alta precisão              \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 3 \033[41m \033[0m Atril            \033[42m \033[0m Visualizador de documentos leve                \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 4 \033[41m \033[0m Bibliofilo       \033[42m \033[0m Leitor de Ebooks                               \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 5 \033[41m \033[0m Basket           \033[42m \033[0m Bloco de notas                                     \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 6 \033[41m \033[0m Calibre          \033[42m \033[0m Solução unificada para Ebooks                  \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 7 \033[41m \033[0m Calligra Stage   \033[42m \033[0m Faça apresentações de forma simples                \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 8 \033[41m \033[0m Contato          \033[42m \033[0m Organize facilmente seus contatos                  \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 9 \033[41m \033[0m DiffPDF          \033[42m \033[0m Leitor de PDFs                                 \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 10 \033[41m \033[0m Evince          \033[42m \033[0m Visualizador de documentos                         \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 11 \033[41m \033[0m Foliate         \033[42m \033[0m Simples e moderno leitor de Ebooks             \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 12 \033[41m \033[0m Glabels         \033[42m \033[0m Crie etiquetas,cartões e capas de media        \033[1;43m \033[3;5;10mCommunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 13 \033[41m \033[0m GNOME Latex     \033[42m \033[0m Editor de latex                                \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m" 
echo -e "\033[41m \033[0m 14 \033[41m \033[0m Gnubiff         \033[42m \033[0m Notifica novos e-mails                         \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 15 \033[41m \033[0m Gummi           \033[42m \033[0m Editor de latex simples                        \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 16 \033[41m \033[0m HomeBank        \033[42m \033[0m Programa para contabilidade pessoal            \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 17 \033[41m \033[0m Kile            \033[42m \033[0m Editor de textos e latex                           \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 18 \033[41m \033[0m Gedit           \033[42m \033[0m Poderozo editor de textos                      \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 19 \033[41m \033[0m KmyMoney        \033[42m \033[0m Gestor de finanças pessoais                    \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 20 \033[41m \033[0m Ktnef           \033[42m \033[0m Visualiza e extrai arquivos TNEF                   \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 21 \033[41m \033[0m LibreOffice     \033[42m \033[0m Pacote de programas para escritorio                \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 22 \033[41m \033[0m Money manager   \033[42m \033[0m Programa de finanças pessoais                  \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"   
echo -e "\033[41m \033[0m 23 \033[41m \033[0m Okular          \033[42m \033[0m Visualizador de documentos                         \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 24 \033[41m \033[0m Osmo            \033[42m \033[0m Organizador pessoal                            \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 25 \033[41m \033[0m PDF Tricks      \033[42m \033[0m Visualizador de PDFs                           \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 26 \033[41m \033[0m PLan            \033[42m \033[0m Gestão de projetos                                 \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 27 \033[41m \033[0m Kate            \033[42m \033[0m Editor de textos completo                            \033[1;47m\033[3;5;10m AUR \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 28 \033[41m \033[0m Vim             \033[42m \033[0m Poderozo editor de textos para o terminal          \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 29 \033[41m \033[0m Emacs           \033[42m \033[0m Famoso editor de textos                            \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 30 \033[41m \033[0m Nano            \033[42m \033[0m Editor de textos simples para terminais             \033[1;45m\033[3;5;10m Core \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 31 \033[41m \033[0m BlueFish        \033[42m \033[0m Editor de textos HTML PHP e CSS                \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                                                                                   \033[0m"
echo ""
echo -e "\033[1;47m\033[1;37mSELECIONE UM NUMERO\033[1;46m                                                   \033[1;46m\033[1;31mE TECLE ENTER\033[0m"
echo -e "\033[1;47m                     (info) Para informaçoes sobre programs   (i) Inicio   (S) Sair\033[0m"
echo -e ">>>|\c"


# Funções

read opc

  case $opc in

        i) loja       ;;
        s) exit ;;
        info) package_info      ;;
1) sudo pacman -S abiword       ;;
2) sudo pacman -S gnumeric      ;;
3) sudo pacman -S atril ;;
4) sudo pacman -S bookworm      ;;
5) sudo pacman -S basket        ;;
6) sudo pacman -S calibre       ;;
7) sudo pacman -S calligra      ;;
8) sudo pacman -S gnome-contacts        ;;
9) sudo pacman -S diffpdf       ;;
10) sudo pacman -S evince       ;;
11) sudo pacman -S foliate      ;;
12) sudo pacman -S glabels      ;;
13) sudo pacman -S gnome-latex  ;;
14) sudo pacman -S gnubiff      ;;
15) sudo pacman -S gummi        ;;
16) sudo pacman -S homebank     ;;      
17) sudo pacman -S kile ;;
18) sudo pacman -S gedit        ;;
19) sudo pacman -S kmymoney     ;;
20) sudo pacman -S ktnef        ;;
21) sudo pacman -S libreoffice  ;;
22) sudo pacman -S moneymanagerex       ;;
23) sudo pacman -S okular       ;;
24) sudo pacman -S osmo ;;
25) sudo pacman -S pdftricks    ;;
26) sudo pacman -S calligra-plan        ;;
27) yay -S kate-git     ;;
28) sudo pacman -S vim  ;;
29) sudo pacman -S emacs        ;;
30) sudo pacman -S nano ;;
31) sudo pacman -S bluefish     ;;

  esac
produc
}

# Visão geral
utilits(){

clear
echo -e "\033[1;46m\033[1;31mARCH STORE\033[1;41m                                                             \033[1;37m  Utilidades\033[0m"
echo -e "$lineb"
echo -e "$line"
echo -e "\033[46m                                                                                   \033[0m"
echo -e "\033[41m \033[0m 1 \033[41m \033[0m Albert           \033[42m \033[0m Sofisticado iniciador de teclado independente  \033[1;44m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 2 \033[41m \033[0m Ark              \033[42m \033[0m Utilitario de compressão e descompressão           \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 3 \033[41m \033[0m Atom             \033[42m \033[0m Poderoso editor de texto, rapido e moderno     \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 4 \033[41m \033[0m Buoh             \033[42m \033[0m Leia suas historias em quadrinhos favoritas    \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 5 \033[41m \033[0m Caja             \033[42m \033[0m Gernciador dde arquivos do ambiente 'Mate'     \033[1;44m \033[3;5;10m Comunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 6 \033[41m \033[0m Catfish          \033[42m \033[0m Encontre arquivos de forma facil               \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 7 \033[41m \033[0m Code OSS         \033[42m \033[0m Visual Studio Code. Editor de textos            \033[1;44m\033[3;5;10m Comunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 8 \033[41m \033[0m Compton (Picom)  \033[42m \033[0m Compositor de janelas simples                  \033[1;44m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 9 \033[41m \033[0m Conky Manager    \033[42m \033[0m Adicione e manipule seus Conkys                \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 10 \033[41m \033[0m Deepin File Manager   \033[42m \033[0m Gernciador de arquivos do ambiente DDE    \033[1;44m\033[3;5;10m Comunity \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 11 \033[41m \033[0m Engrampa        \033[42m \033[0m Utilitario de compressão e descompressão       \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 12 \033[41m \033[0m Filelight       \033[42m \033[0m Visualize a utilização dos seus discos            \033[1;43m \033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 13 \033[41m \033[0m File Roller     \033[42m \033[0m Utilitario de compressão e descompressão           \033[1;43m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m" 
echo -e "\033[41m \033[0m 14 \033[41m \033[0m GNOME Fonts     \033[42m \033[0m Visualize as fontes do seu sistema                 \033[1;43m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 15 \033[41m \033[0m PcManFm         \033[42m \033[0m Gernciador de arquivos do ambiente LXDE        \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 16 \033[41m \033[0m PcManFm QT      \033[42m \033[0m Gerencidor de arquivos do ambiente LXQT        \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 17 \033[41m \033[0m XFCE4 Task Manager    \033[42m \033[0m Visualize os processos de sistema            \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 18 \033[41m \033[0m GNOME Discos    \033[42m \033[0m Formate,redimencione e edite seus dispositivos     \033[1;43m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 19 \033[41m \033[0m GNOME Maps      \033[42m \033[0m Encontre lugares pelo mundo                    \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 20 \033[41m \033[0m GNOME Pie       \033[42m \033[0m Tenha um menu completo com um clique           \033[1;44m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 21 \033[41m \033[0m Gnote           \033[42m \033[0m Mantenho sua notas organizadas                     \033[1;44m \033[3;5;10mExtra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 22 \033[41m \033[0m Gdmap           \033[42m \033[0m Visualize o uso dos seus discos                \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"   
echo -e "\033[41m \033[0m 23 \033[41m \033[0m Guake           \033[42m \033[0m Emulador de terminal suspenso                  \033[1;44m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 24 \033[41m \033[0m Kalarm          \033[42m \033[0m Não perca a hora nem seus compromissos             \033[1;43m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 25 \033[41m \033[0m KBackup         \033[42m \033[0m Ferramenta para backups                            \033[1;43m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 26 \033[41m \033[0m PLan            \033[42m \033[0m Gestão de projetos                                 \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 27 \033[41m \033[0m Kate            \033[42m \033[0m Editor de textos completo                            \033[1;47m\033[3;5;10m AUR \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 28 \033[41m \033[0m Vim             \033[42m \033[0m Poderozo editor de textos para o terminal          \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 29 \033[41m \033[0m Emacs           \033[42m \033[0m Famoso editor de textos                            \033[1;44m\033[3;5;10m Extra \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 30 \033[41m \033[0m Nano            \033[42m \033[0m Editor de textos simples para terminais             \033[1;45m\033[3;5;10m Core \033[0m"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 31 \033[41m \033[0m BlueFish        \033[42m \033[0m Editor de textos HTML PHP e CSS                \033[1;43m\033[3;5;10m Community \033[0m"
echo -e "\033[46m                                                                                   \033[0m"
echo ""
echo -e "\033[1;47m\033[1;37mSELECIONE UM NUMERO\033[1;46m                                                   \033[1;46m\033[1;31mE TECLE ENTER\033[0m"
echo -e "\033[1;47m                     (info) Para informaçoes sobre programs   (i) Inicio   (S) Sair\033[0m"
echo -e ">>>|\c"


# Funções

read opc

  case $opc in

        i) loja       ;;
        s) exit ;;
        info) package_info      ;;
1) sudo pacman -S abiword       ;;
2) sudo pacman -S gnumeric      ;;
3) sudo pacman -S atril ;;
4) sudo pacman -S bookworm      ;;
5) sudo pacman -S basket        ;;
6) sudo pacman -S calibre       ;;
7) sudo pacman -S calligra      ;;
8) sudo pacman -S gnome-contacts        ;;
9) sudo pacman -S diffpdf       ;;
10) sudo pacman -S evince       ;;
11) sudo pacman -S foliate      ;;
12) sudo pacman -S glabels      ;;
13) sudo pacman -S gnome-latex  ;;
14) sudo pacman -S gnubiff      ;;
15) sudo pacman -S gummi        ;;
16) sudo pacman -S homebank     ;;      
17) sudo pacman -S kile ;;
18) sudo pacman -S gedit        ;;
19) sudo pacman -S kmymoney     ;;
20) sudo pacman -S ktnef        ;;
21) sudo pacman -S libreoffice  ;;
22) sudo pacman -S moneymanagerex       ;;
23) sudo pacman -S okular       ;;
24) sudo pacman -S osmo ;;
25) sudo pacman -S pdftricks    ;;
26) sudo pacman -S calligra-plan        ;;
27) yay -S kate-git     ;;
28) sudo pacman -S vim  ;;
29) sudo pacman -S emacs        ;;
30) sudo pacman -S nano ;;
31) sudo pacman -S bluefish     ;;

  esac
utilits
}


loja(){

# Visão geral.
clear
echo -e "\033[1;46m\033[1;31mARCH STORE\033[1;41m                                                       \033[1;37mVersion 0.04\033[0m"
echo -e "$lineb"
echo -e "$line"
echo -e "\033[46m                                                                             \033[0m"
echo -e "\033[41m \033[0m 1 \033[41m \033[0m Musicas e Audio  \033[42m \033[0m Programas para reproduzir,criar e editar audios "
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 2 \033[41m \033[0m Imagens e Video  \033[42m \033[0m Programas para reproduzir,criar e editar videos"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 3 \033[41m \033[0m Produtividade    \033[42m \033[0m Editores,Planilhas,Graficos,Apresentações e Calculos"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 4 \033[41m \033[0m Utilidades       \033[42m \033[0m Gerenciadores de arquivos e ferramentas"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 5 \033[41m \033[0m Desenvolvimento  \033[42m \033[0m Ferramentas de desenvolvimento e programação"
echo -e "\033[46m                     \033[0m"
echo -e "\033[41m \033[0m 6 \033[41m \033[0m Bonus            \033[42m \033[0m Temas para janelas e icones "
echo -e "\033[46m                                                                              \033[0m"
echo ""
echo -e "\033[1;47m\033[1;37mSELECIONE UM NUMERO\033[1;46m                                              \033[1;46m\033[1;31mE TECLE ENTER\033[0m"
echo -e "\033[1;47m                                                         (i) Inicio   (s) Sair\033[0m"
echo -e ">>>|\c"

# Execução das tarefaz

read opc

  case $opc in

        1) audio  ;;
        2) video  ;;
        3) produc  ;;
	4) utilits	;;
        s) exit ;;
	i) sh archcenter02.sh	;;

esac

loja

}

### Variaveis

lineb="\033[1;46m                                                                       \033[0m"
liner="\033[1;47m                                                                      \033[0m"
ldn="\033[1;31m┌─────────────────────────────────────────────────────────────────────┐"
lup="\033[1;31m└─────────────────────────────────────────────────────────────────────┘"
minline="\033[1;31m│"
minlinew="\033[1;37m│"
block="\033[1;31m┌────────────────────┐"
blockd="\033[1;37m└────────────────────┘"
line="\033[1;34m──────────────────────────────────────────────────────────\033[0mPowerBy DCG"
### Interface inicial do programa 
clear
echo -e "\033[1;46m\033[1;31mARCH CENTER\033[1;41m                                                \033[1;37mVersion 0.04\033[0m"
 echo -e "$lineb"
  echo -e " $line"
   echo -e " $block $block $block"
  echo -e " $minline         1          $minline $minline         2          $minline $minline         3          $minline"
 echo -e " $minlinew    SINCRONIZAR     $minlinew $minlinew     ATUALIZAR      $minlinew $minlinew      INSTALAR      $minlinew"
echo -e " $minlinew    REPOSITORIOS    $minlinew $minlinew      SISTEMA       $minlinew $minlinew      PROGRAMA      $minlinew"
 echo -e " $blockd $blockd $blockd"
  echo ""
   echo -e " $block $block $block"
    echo -e " $minline         4          $minline $minline         5          $minline $minline         6          $minline"
   echo -e " $minlinew      REMOVER       $minlinew $minlinew       LIMPAR       $minlinew $minlinew      PACOTES       $minlinew"
 echo -e " $minlinew      PROGRAMA      $minlinew $minlinew       CACHE        $minlinew $minlinew      ORFÃOS        $minlinew"
echo -e " $blockd $blockd $blockd"
 echo ""
  echo -e " $block $block $block"
   echo -e " $minline         7          $minline $minline         8          $minline $minline         9          $minline"
    echo -e " $minlinew INFORMAÇOES SOBRE  $minlinew $minlinew   LISTAR PACOTES   $minlinew $minlinew     PESQUIZAR      $minlinew"
   echo -e " $minlinew     PROGRAMAS      $minlinew $minlinew     INSTALADOS     $minlinew $minlinew   POR PROGRAMAS    $minlinew"
  echo -e " $blockd $blockd $blockd"
 echo ""
echo -e " $block $block $block"
 echo -e " $minline        10          $minline $minline        11          $minline $minline         12         $minline"
  echo -e " $minlinew      BOOTAR        $minlinew $minlinew    PESQUIZAR NA    $minlinew $minlinew     ATUALIZAR      $minlinew"
   echo -e " $minlinew      PENDIVE       $minlinew $minlinew        AUR         $minlinew $minlinew        AUR         $minlinew"
    echo -e " $blockd $blockd $blockd"
   echo -e "\033[1;47m\033[1;37mSELECIONE UM NUMERO\033[1;46m                                      \033[1;46m\033[1;31mE TECLE ENTER\033[0m"
  echo -e "$liner"
 echo -e ">>|\c"

### Direcionamentos
read opc
  case $opc in
1) sudo pacman -Sy  ;;
2) sudo pacman -Syu ;;
3) loja ;;
4) del_package	;;
5) sudo pacman -Scc	;;
6) echo -e "\033[1;46m\033[1;31mSE NENHUM PACOTE APARECER NA TELA,ENTÃO OS MESMOS NÃO EXISTEM !!!\033[0m" && sleep 5 && sudo pacman -Qtd	;;
7) package_info	;;
8) list_package	;;
9) pes_pack	;;
10) ddboot	;;
11) pes_packyay	;;
12) yay -Syu	;;
esac
sleep 1
sh archcenter02.sh
