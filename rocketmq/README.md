rocketmq
=========

Centos 离线安装 rocketmq

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
# rocketmq 安装包
$ tree rocketmq/files
rocketmq/files
└── rocketmq-all-4.8.0-bin-release.zip
```

Playbook 示例
----------------

```yaml
- hosts: servers
  vars:
    # 6个节点
    rocketmq_nodes: 6
    # 服务器定义
    rocketmq_node1: mq1
    rocketmq_node2: mq2
    rocketmq_node3: mq3
    rocketmq_node4: mq4
    rocketmq_node5: mq5
    rocketmq_node6: mq6
  roles:
    - rocketmq
```

开源协议
-------

MIT

作者信息
------------------

https://github.com/jiangliheng
