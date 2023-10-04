# acme
记录自己使用acme 签发泛域名证书
---
2022年9月1日补充
1. 使用前需要安装acme.sh,可以通过一条命令或者是直接拉官方代码仓库仓库在本地执行
2. 如果脚本卡住不动可能要开一下🪜

2023年10月4日补充
1. 增加`cloudflare`的使用记录
---
## 命令一键安装
> curl https://get.acme.sh | sh -s email=my@example.com
## 直接拉官方仓库
> git clone https://github.com/acmesh-official/acme.sh.git

# 阿里云域名签发命令
```shell

# 这里使用let‘s encrypt的api，dns的方式签发泛域名证书
# 脚本会在签发时添加一条txt解析记录，因此需要提前配置阿里云ak，sk到环境变量。
# 此处使用ali云，因此dns选项传dns_ali，如果需要使用其他云的选项可以到acme的代码仓库看dnsapi目录下的脚本支持。

# 导入环境变量
source ./dns_ali.env
# 签发证书
acme.sh --issue --server letsencrypt -d '*.shubo6.cn' --dns dns_ali
```

# cloudflare域名签发命令
```shell


# 导入环境变量


# 我的个人资料 -> API令牌 -> Global API Key -> 查看 填充到 CF_Key

source ./dns_cf.env
# 签发证书
acme.sh --issue --server letsencrypt -d '*.shubo6.cn' --dns dns_cf
```