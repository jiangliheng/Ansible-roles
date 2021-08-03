clickhouse
=========

Centos 离线安装 clickhouse

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

```bash
# clickhouse 官网下载
$ tree clickhouse/files
clickhouse/files
├── clickhouse-client-20.9.3.45-2.noarch.rpm
├── clickhouse-common-static-20.9.3.45-2.x86_64.rpm
└── clickhouse-server-20.9.3.45-2.noarch.rpm
```

Playbook 示例
----------------

```yaml
- hosts: servers
  roles:
     - clickhouse
```

开源协议
-------

MIT

作者信息
------------------

https://github.com/jiangliheng
