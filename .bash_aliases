alias p='cd ..'
alias pp='cd ../../'
alias ppp='cd ../../../' 

alias untgz='tar -xzvf $@'
alias tgz='tar -czvf $@'

alias aliases='nano ~/.bash_aliases && source ~/.bash_aliases'

alias pancake='ssh pancake@molotnikov.de'
alias pan='ssh pancake@pan.molotnikov.de'

alias babi='nano'
alias naon='nano'
alias nsno='nano'
alias noan='nano'
alias mamp='nano'
alias nanoa='nano'

alias llg='ll | grep -i $@'
alias kk='ll;echo "please, use ll instead of kk now.."'
alias cg='grep -i $@'

alias lpad='leafpad'

alias oo='libreoffice'

alias rm='rm -i'

#alias paper='kile *.tex ./*/*.tex 2> /dev/null 1>&2 & disown %1'
alias paper='nohup ~/newtexlipse/eclipse > /dev/null 2>&1 &'

alias ev='evince $@'
alias d='dolphin >/dev/null 2>&1 . & disown'
alias k='kate $@ >/dev/null 2>&1 . & disown'


# git shortcuts
alias gmt='git add -v . && git commit -m "$@"'
alias grm='git rm $@'
alias status='git status'
alias sta='git status'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias pull='git pull'
alias push='git push'
alias fetch='git fetch'
alias merge='git merge origin/master'
alias f="git fetch"
alias mm="git merge origin/master"
alias bra="git branch -a"
alias co="git checkout $@"
alias clone="git clone --depth 1 $@"
alias checkout="git checkout $@"

alias clipboard="xclip -selection clipboard"

alias run='nohup "$@"  >/dev/null 2>&1  &'

myfunction() {    
    arg=$1    
    firefox -search $arg &
}

alias google=myfunction

alias printSamsungLocal='lp -o ColorModel=color -d CLX-3180-Series -o sides=two-sided-long-edge $@'

alias printSamsung='lp -o ColorModel=color -d PiSamsung -o sides=two-sided-long-edge $@'
alias printSamsungPi='lp -o ColorModel=color -d PiSamsung -o sides=two-sided-long-edge $@'

alias sql='sqlitebrowser $@'
alias editarticles='sql ~/about.site/articles.db'

mysearch() {
  find $2 -path .git -prune -o -name $1
}

alias searchtext='grep -r --exclude-dir=.git $@'
alias findfile=mysearch
alias searchfile=mysearch

alias pihome='zssh pi@192.168.2.186'
alias pi='zssh pi@home.molotnikov.de'

alias backup_ocsp='rsync -av ~/ownCloud/OCSP/encfs ~/hdd/home/zaur/ownCloud/OCSP/encfs && rsync -av ~/ownCloud/Security/CERTS/OCSP/share ~/hdd/home/zaur/ownCloud/Security/CERTS/OCSP/share'
#alias backup_ocsp_cloud='rsync -av /home/zaur/OCSP /home/zaur/HomeBackup/private/ && rsync -av /home/zaur/ownCloud/Security/CERTS/OCSP/share /home/zaur/HomeBackup/private/OCSP_share'
alias mount_ocsp='encfs ~/ownCloud/OCSP/encfs ~/OCSP && backup_ocsp'
alias umount_ocsp='fusermount -u ~/OCSP && backup_ocsp'
alias mount_website='sshfs -o idmap=user -o uid=$UID -o gid=$GROUPS pancake@molotnikov.de:/var/www /home/zaur/website/ && cd /home/zaur/website'

alias editaliases='nano ~/.bash_aliases && source ~/.bash_aliases'

alias pwkvideo='vlc /home/zaur/OCSP_Videos/pwk-20216-192076/media/video 2>&1 > /dev/null & disown'
alias pwkbook='evince ~/OCSP/Materials/pwk-20216-192076.pdf 2>&1 > /dev/null & disown'
alias ocspshare='cd /home/zaur/ownCloud/Security/CERTS/OCSP/share'
alias getvpnpass='cat /home/zaur/OCSP/Connection/login.txt  | grep "Pass" | cut -f2 -d" " '

alias texlipse='~/newtexlipse/eclipse &>/dev/null & disown && cd ~/Documents/papers/dicts && ls -1'

alias virtman='virt-manager'
alias virtmanager='virt-manager'


alias r='rails'
alias s='export CERTSECRET='123'; r server'
alias g='r generate'
alias m='r db:migrate'
alias hm='heroku run rails db:migrate'
alias hl='heroku logs --tail'
alias ht='hl'
alias hp='echo "Pushing master to heroku..." && sleep 2 && git push heroku master:master && echo "Migrating DB..." && hm'
alias ph='hp'
alias c='r console'
alias h='heroku'
alias hr='heroku run:detached rake'
alias hc='heroku run rails console'
alias q='cucumber'

alias nohistory='unset HISTFILE; set +o history;'

alias toclip='xclip -selection clipboard'

alias yed='cd /home/zaur/yed/yed-3.17.1/;java -jar yed.jar'

alias mirrorwide1='xrandr --size 1920x1080 --output eDP-1 --mode 1920x1080 --pos 0x0 --output HDMI-1 --mode 1920x1080 --pos 0x0'
alias mirrorwide2='xrandr --size 1920x1080 --output eDP-1 --mode 1920x1080 --pos 0x0 --output HDMI-2 --mode 1920x1080 --pos 0x0'
alias mirrorwidei='xrandr --size 1920x1080 --output eDP-1 --mode 1920x1080 --pos 0x0 --output HDMI-1 --mode 1920x1080i --pos 0x0'
alias lapscreen='xrandr --size 1920x1080 --output eDP-1 --mode 1920x1080 --pos 0x0 --output DP-1-1 --off --output DP-2-1 --off --output HDMI-1 --off --output HDMI-2 --off --output DP-1 --off --output DP-2 --off'
alias mirrorsquare='xrandr --size 1024x768 --output eDP1 --mode 1024x768 --pos 0x0 --output HDMI-2 --mode 1024x768 --pos 0x0'
alias hdmibig='xrandr --size 1920x1200 --output eDP-1 --off --output HDMI-1 --mode 1920x1200 --scale 1x1'
alias mozaiq='xrandr --output DP-2-1 --scale 1.2x1.1 --primary  --panning 3072x1584 --output eDP-1 --off'
alias traveldockbig='xrandr --size 1920x1200 --output eDP-1 --off --output DP-1 --mode 1920x1200 --scale 1x1'
alias hdmi1280='xrandr --size 1280x1024 --output eDP1 --off --output HDMI-2 --mode 1280x1024 --scale 1x1'
alias hdmi800='xrandr --size 800x600 --output eDP1 --off --output HDMI-2 --mode 800x600 --scale 1x1'
alias hdmiwide='xrandr --size 1920x1080 --output eDP1 --off --output HDMI-2 --mode 1920x1080 --scale 1x1'
alias hdmiwidei='xrandr --size 1920x1080 --output eDP1 --off --output HDMI-2 --mode 1920x1080i --scale 1x1'
alias edp1wide='xrandr --size 1920x1080 --output eDP1 --mode 1920x1080 --scale 1x1'

alias hdmibigscaled='xrandr --size 2304x1440 --output eDP1 --off --output HDMI-2 --mode 1920x1200'

alias redmoon='redshift -O 3000 -b 0.6:0.6'
alias redmoonstop='redshift -x'

alias ll='ls -alh'


fn_exists()
{
    type $1 | grep -q 'shell function'
}


export LAPTOPLANNIC=enp0s31f6
export ETHERNIC=$LANNIC
export TRAVELDOCNIC=enx3c18a0b13386
export WLANNIC=wlp4s0
export WIFINIC=$WLANNIC

alias ro='route -nv'
alias ic='ifconfig'
alias ff='firefox'

