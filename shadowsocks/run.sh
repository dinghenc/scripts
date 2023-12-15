DIR=~/documents/shadowsocks
mkdir -p ${DIR}

cd ${DIR} || exit

nohup go-shadowsocks2 -s 'ss://AEAD_CHACHA20_POLY1305:${PASSWD}@:8488' -verbose >> go-shadowsocks2.log 2>&1 &!

echo "run done"
