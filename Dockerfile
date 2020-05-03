FROM linuxserver/transmission:latest
LABEL maintainer="qdii"

RUN apk add --no-cache sed
RUN sed -i -e /rpc-host-whitelist/d /defaults/settings.json
RUN sed -i -e '/rpc-port/a \ \ \ \ "rpc-host-whitelist-enabled": true,' /defaults/settings.json
RUN sed -i -e '/rpc-port/a \ \ \ \ "rpc-host-whitelist": "transmission",' /defaults/settings.json
