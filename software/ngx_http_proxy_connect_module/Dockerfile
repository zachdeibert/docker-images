FROM debian:stretch-slim

CMD [ "/usr/local/nginx/sbin/nginx", "-g", "daemon off;" ]
EXPOSE 80
STOPSIGNAL SIGTERM

RUN apt update \
    && apt install -y \
        build-essential \
        curl \
        libpcre3-dev \
        zlib1g-dev \
        libssl-dev \
    && rm -rf /var/lib/apt/lists/* \
    && curl -L https://nginx.org/download/nginx-1.15.2.tar.gz | tar xz \
    && curl -L https://github.com/chobits/ngx_http_proxy_connect_module/archive/master.tar.gz | tar xz \
    && cd nginx-1.15.2 \
    && patch -p1 < ../ngx_http_proxy_connect_module-master/patch/proxy_connect_rewrite_1015.patch \
    && ./configure --add-module=../ngx_http_proxy_connect_module-master --with-http_ssl_module \
    && make \
    && make install \
    && cd .. \
    && rm -rf nginx-1.15.2 ngx_http_proxy_connect_module-master
