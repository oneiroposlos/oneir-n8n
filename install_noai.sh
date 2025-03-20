cd ~
mkdir vol_n8n
sudo chown -R 1000:1000 vol_n8n
sudo chmod -R 755 vol_n8n
echo "--------- 🔴 Finish creating folder -----------"
echo "--------- 🟢 Start docker compose up  -----------"
wget https://raw.githubusercontent.com/oneiroposlos/oneir-n8n/refs/heads/main/compose_noai.yaml -O compose.yaml
export EXTERNAL_IP=http://"$(hostname -I | cut -f1 -d' ')"
sudo -E docker compose up -d
echo "--------- 🔴 Finish! Wait a few minutes and test in browser at url $EXTERNAL_IP for n8n UI -----------"
