Ansible roles
=========

一整套生产环境的 Ansible roles

系统环境
------------

```bash
# 操作系统
$ cat /etc/redhat-release
CentOS Linux release 7.9.2009 (Core)

# Python 版本
$ python -V
Python 3.6.8

# Ansible 版本
$ ansible --version
ansible 2.9.0
  config file = None
  configured module search path = ['/home/ops/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/ops/env3/lib64/python3.6/site-packages/ansible
  executable location = /home/ops/env3/bin/ansible
  python version = 3.6.8 (default, Nov 16 2020, 16:55:22) [GCC 4.8.5 20150623 (Red Hat 4.8.5-44)]
```

说明
----------------

```ansible.cfg```：ansible 配置文件
```hosts```：一套完整生产环境的服务器列表
```test.yml```：初始化整套生产环境的 playbook 编排

PS：由于生产环境网络管控，故大部分中间件都使用离线方式安装，离线安装包需要提前准备。


执行 playbook
----------------

```bash
# 下载 ansible role，离线安装包需要提前准备
$ git clone git@github.com:jiangliheng/Ansible-roles.git
$ cd Ansible-roles

# 初始化整个环境
$ ansible-playbook -i hosts test.yml

# 执行特定 role
$ ansible-playbook -i hosts test.yml --tags=yum

# 选择特定服务器的特定 role
$ ansible-playbook -i hosts test.yml --tags=yum,docker --limit=mon
```

开源协议
-------

MIT

作者信息
------------------

https://github.com/jiangliheng
