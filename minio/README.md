minio
=========

Centos 离线安装 minio

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
# minio 二进制命令
$ tree minio/files
minio/files
├── mc
└── minio
```

Playbook 示例
----------------

```yaml
- hosts: servers
  roles:
     - minio
```

开源协议
-------

MIT

作者信息
------------------

https://github.com/jiangliheng
