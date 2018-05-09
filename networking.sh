#sudo service network-manager stop
#sudo ifconfig virbr0 down
#sudo ifconfig virbr1 down
#sudo ifconfig virbr2 down
#sudo ifconfig virbr3 down
#sudo ifconfig virbr4 down
#sudo ifconfig virbr5 down
#sudo ifconfig virbr6 down
#sudo ifconfig docker0 down
#sudo ifconfig wlp3s0 down

dev=enp0s31f6
selfaddr=192.168.1.2
selfnm=24
selffulladdr="$selfaddr/$selfnm"
devaddr=192.168.1.1
net=192.168.1.0
netmask=255.255.255.0

alias ro='route -nv'
alias u='sudo ifconfig $dev up'
alias d='sudo ifconfig $dev down'
alias ic='ifconfig $dev'
alias ar='sudo ip route add $devaddr/32 dev $dev'
alias aa='sudo ip addr add $selffulladdr dev $dev'
alias flushaddr='sudo ip addr flush dev $dev'
alias deldef='sudo ip route del default via 192.168.33.1'
alias dhc='sudo dhclient $dev'
alias pd='ping -c 3 $devaddr'
alias tn='telnet $devaddr'
alias reconf='d; u; aa; ar; ic; ro; pd'
alias ff='firefox http://$devaddr:80/'
alias nmstop='sudo service network-manager stop'
alias nmrestart='sudo service network-manager restart'
