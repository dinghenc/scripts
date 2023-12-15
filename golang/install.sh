TMP_DIR=~/tmp

mkdir -p ${TMP_DIR}
cd ${TMP_DIR} || exit

echo "downloading"

wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

echo "install done"

echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.zshrc
source ~/.zshrc

go version