FROM alpine:latest

RUN apk add --no-cache unbound dns-root-hints drill

# root.hintsを配置
RUN mkdir -p /usr/share/dns && cp /usr/share/dns-root-hints/named.root /usr/share/dns/root.hints

EXPOSE 53/udp 53/tcp

CMD ["unbound", "-d", "-c", "/usr/local/etc/unbound/unbound.conf"]
