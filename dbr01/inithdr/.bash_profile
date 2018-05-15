# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/usr/local/mybin

export PATH
export LANG=C

# Local Setting
source .dbrhost_include
export PS1="[\u@$dbr_host:\l \W]\\$ "


alias cdb="cd /usr/local/mybin"
alias cdz="cd /home ; cd "
alias cdf="cd /etc/zpanel/panel"
alias cdh="cd public_html"
alias cdp="cd public_html/wp-content/plugins"
alias cdt="cd public_html/wp-content/themes"
alias cdv="cd backups"
alias h="history"
alias l="ls -al"
alias lc="ls -c"
alias ld="ls -d */"
alias lf="ls -al | grep ^[-l]"

alias cassandra_start="/opt/python3/bin/uwsgi --enable-threads --ini /home/cassandra/cassandra.ini"
alias cassandra_stop="/opt/python3/bin/uwsgi --stop /home/cassandra/cassandra.pid"
alias cassandra_reload="/opt/python3/bin/uwsgi --reload /home/cassandra/cassandra.pid"

alias as_billing='sudo -u billing bash'

export GOROOT=/usr/lib/golang
export GOBIN=$GOROOT/bin
export GOPATH=/usr/local/golang
export PATH=$PATH:$GOROOT/bin


# End of Local


