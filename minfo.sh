[ -z "$1" ] && { cat README.md; exit; }

[ "$1" = hostname ] && { hostname; exit; }
[ "$1" = uptime ] && { uptime -p; exit; }
[ "$1" = disk ] && { df -h /; exit; }
[ "$1" = all ] && { hostname; uptime -p; df -h /; exit; }

echo "Uso $0 {Escreva ./minfo.sh utilizando alguma dessas opções: hostname|uptime|disk|all}"
exit 1