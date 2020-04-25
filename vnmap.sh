clear
vwolf() {
echo '  |..____________________, ,'
sleep 0.1
echo ' / `---___________----_____|]-------[VNMAP>> '
sleep 0.1
echo '/_==o;;;;;;;;_______.:/ '
sleep 0.1
echo '), ---.(_(__) / '
sleep 0.1
echo '// () ), ----`'
sleep 0.1
echo '//___// '
sleep 0.1
echo '//___// '
sleep 0.1
echo '//___//'
date
echo ' ' 
echo ' ' 
} 
firewall() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es la deteccion de un cortafuegos en el sitio web introducido\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read web
echo  ' ' 
nmap -p80,443 --script http-waf-detect --script-args=http-waf-detect.aggro,http-waf-detect.detectBodyChanges $web
sleep 3.2
echo  ' ' 
echo 'Escaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo -e '\e[0;34mDeseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac
}

infofirewall() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es analizar el cortafuegos del sitio web introducido\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web de la que desea obtener info adicional de su seguridad, ej: google.es:\e[0m'
read infofire
echo  ' ' 
nmap -p80,443 --script http-waf-fingerprint $infofire
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac
}

wwhois() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es extraer información de la web mediante whois\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read wwhois
echo  ' ' 
nmap --script whois-domain.nse $wwhois
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac
} 

dnsbrute() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es analizar el DNS de la web introducida\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read dnsbrute
echo  ' ' 
nmap --script dns-brute $dnsbrute
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo 'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac 
} 

metodogetpost() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es analizar si la web usa método GET o POST\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read gweb
echo  ' ' 
nmap --script http-methods $gweb
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m' 
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac
} 

mapaweb() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es generar un mapa de los directores e subdir del sitio web introducido\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read mapa
echo  ' ' 
nmap --script http-sitemap-generator.nse $mapa -p 80
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m' 
sleep 2.7
echo  ' ' 
echo 'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac 
} 

portt() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es verificar que puertos se encuentran abiertos en la web introducida\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read pweb
echo  ' ' 
nmap --open $pweb
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac
} 

vulscan() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es escanear vulnerabilidades de la web introducida\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read vul
echo  ' ' 
sleep 1.8
echo -e '\e[1;33mPor favor espere, el escaneo necesita su tiempo\e[0m'
echo ' '
nmap --script vuln scanme.nmap.org $vul
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac 
}  

websql() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es probar una contraseña nula hacia la db de la web introducida\e[0m' 
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read wsql
echo  ' ' 
nmap -p 3306 --script=mysql-empty-password $wsql
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m' 
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac
}  

scansrv() {
sleep 2.1
clear;vwolf
echo ' ' 
echo -e '\e[1;33mLa función del script es extraer información del servidor web\e[0m'
sleep 2 1
echo ' '
echo -e '\e[0;34mPor favor inserta la web que desea escanear ej.google.es :\e[0m'
read srvscan
echo  ' ' 
echo -e '\e[1;33mEl escaneo puede ser lento, por favor espere\e[0m'
echo ' '
nmap --script http-headers $srvscan
sleep 3.2
echo  ' ' 
echo -e '\e[0;34mEscaneo completado\e[0m'
sleep 2.7
echo  ' ' 
echo  'Deseas volver al menu? Y/N' 
read menu1
case $menu1 in
Y | s | y | yes | SI | YES | S)
        echo  ' ' 
        sleep 1.7
        echo 'Redirigiendo al menu...'
        sleep 2.3
        bash vnmap.sh
        ;;
*)
	$X
	;;
esac 
} 
principio() {
echo 'Loading…' 
sleep 2.4 & job=$!; while kill -0 $job 2>/dev/null; do for s in / - \\ \|; do printf "\r$s"; sleep .1; done; done
clear
} 
principio
vwolf
sleep 0.1
echo '                  ▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀' 
echo ' ' 
sleep 0.1
echo ' ' 
echo -e '\e[1;33m┣▇▇▇═─ Scripts avanzados vnmap\e[1m'
sleep 0.1
echo ' '
echo ' ' 
echo -e '\e[31m┣▇▇═─ [1] Escanear puertos abiertos\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [2] Escanear servidor web\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [3] Escanear metodo GET/POST\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [4] Escanear vulnerabilidades web\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [5] Escanear web con whois\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [6] Escanear cortafuegos web\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [7] Escanear info del cortafuegos web\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [8] Generar mapa del sitio web\e[1m'
sleep 0.1
echo -e '\e[31m┣▇▇═─ [9] Intenta acceder en la db utilizando pass nula\e[1m'
sleep 0.1
echo -e '\e[0;34m┣▇▇═─ [98] Author\e[1m'
sleep 0.1
echo -e '\e[0;34m┣▇▇═─ [99] Salir\e[1m'
echo ' ' 
sleep 2.3
echo -e '\e[1;33m┣▇▇▇═─ Inserte la opcion a ejecutar:\e[0m'
read ejecutar
case $ejecutar in
1)
	portt
	;;
2)
	scansrv
	;;
3)
	metodogetpost 
	;;
4)
	vulscan
	;;
5)
	wwhois
	;;
6)
	firewall
	;;
7)
	infofirewall
	;;
8)
	mapaweb 
	;;
9)
	websql
	;;
98) 
	am start -a android.intent.action.VIEW -d https://vwolf.site 
	;;
99)
	X
	;;
esac
X=exit