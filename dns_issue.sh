# 这里使用let‘s encrypt的api，dns的方式签发泛域名证书
# 脚本会在签发时添加一条txt解析记录，因此需要提前配置阿里云ak，sk到环境变量。
# 如果需要使用其他云详情可以看acme的dnsapi目录下的脚本支持。

# 导入环境变量
source ./dns_ali.env
# 签发证书
./acme.sh/acme.sh --issue --server letsencrypt -d '*.shubo6.cn' --dns dns_ali