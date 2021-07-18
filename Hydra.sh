wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-x64.tar.gz -O xmrig.tar.gz

tar -xf xmrig.tar.gz

find  -type f -name "xmrig"  > conf_search.txt
things=""
while read line; do things="$line"; done < conf_search.txt

 "$things"  -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u ashc4n@gmail.com --cuda --cuda-loader=./libxmrig-cuda.so --keepalive --print-time=120 -a rx/0 --no-nvml 