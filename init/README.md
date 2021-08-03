init
=========

Centos 基线初始化配置：设置dns、关闭selinux、关闭防火墙、内核参数调整、vim 配置、中文环境配置、基础工具包安装、常用别名、历史命令记录设置等

测试环境
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

变量
--------------

见 [vars/main.yml](vars/main.yml)

依赖
------------

- yum
- kernel（升级内核到 5.x，保证 Docker、K8S 运行稳定）

Playbook 示例
----------------

```yaml
- hosts: servers
  roles:
     - init
```

开源协议
-------

MIT

作者信息
------------------

https://github.com/jiangliheng
