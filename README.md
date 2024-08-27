# proxychain
Proxy chain Dockerfile


```
./proxychains4 -f proxychains.conf curl https://www.google.com/
```

## Build the container:

```
docker build -t proxychain:4.4.0 .
```

Please replace your proxy in proxychains.conf `[ProxyList]`

NORMAL HTTP REQUEST:
```
docker run --name pchain -it --rm -v $(pwd):/conf proxychain:4.4.0 /proxychains-proxychains-4.4.0/proxychains4 -f /conf/proxychains.conf curl https://www.google.com/
```

FOR SSH:
```
chmod 400 sample.pem
docker run --name pchain -it --rm -v $(pwd):/conf proxychain:4.4.0 /proxychains-proxychains-4.4.0/proxychains4 -f /conf/proxychains.conf ssh -i /conf/sample.pem <user>@<IP>
```