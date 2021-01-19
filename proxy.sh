# Setting up
export http_proxy=http://127.0.0.1:8889/
export https_proxy=http://127.0.0.1:8889/
export HTTP_PROXY=http://127.0.0.1:8889/
export HTTPS_PROXY=http://127.0.0.1:8889/
export no_proxy=127.0.0.1,localhost,$NODE_IP_I

./v2ray --config=config.json > ./out.log 2>&1 &

# Unset
env | grep -i "_proxy" |  cut -d "=" -f 1
ps aux | grep "./v2ray --config=config.json" | awk '{print $2}' | xargs -I {} kill -9 {}