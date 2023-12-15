# Some useful scripts

## Install oh-my-zsh
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/dinghenc/scripts/main/zsh/install.sh)"
```

## Add a user
```bash
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/dinghenc/scripts/main/adduser/install.sh)"
```

## Install golang
```bash
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/dinghenc/scripts/main/golang/install.sh)"
```

## Install shadowsocks
```bash
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/dinghenc/scripts/main/shadowsocks/install.sh)"

# run
mkdir -p ~/documents/shadowsocks && cd ~/documents/shadowsocks
nohup go-shadowsocks2 -s 'ss://AEAD_CHACHA20_POLY1305:${PASSWD}@:8488' -verbose >> go-shadowsocks2.log 2>&1 &!
lsof -i:8488
```

## Config git
```bash
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/dinghenc/scripts/main/git/config.sh)"
```
