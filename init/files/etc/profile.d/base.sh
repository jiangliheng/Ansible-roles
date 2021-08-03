## ps1
PS1='\[\033[0m\]\[\033[1;36m\][\u\[\033[0m\]@\[\033[1;32m\]\h\[\033[0m\] \[\033[1;31m\]\w\[\033[0m\]\[\033[1;36m\]]\[\033[33;1m\]\\$ \[\033[0m\]'

## history 设置
# 最大记录数
HISTFILESIZE=5000
# 输出记录数
HISTSIZE=5000
# 获取用户 ip
USER_IP=$(who -u am i 2>/dev/null | awk '{print $NF}' | sed -e 's/[()]//g')
if [ -z ${USER_IP} ]
then
  USER_IP=$(hostname -i)
fi
# 时间用户设置
HISTTIMEFORMAT="[%Y-%m-%d %H:%M:%S] [${USER_IP}:$(whoami)] "
