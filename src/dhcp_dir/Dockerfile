FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y isc-dhcp-server snmp && \
    rm -rf /var/lib/apt/lists/*
RUN touch /var/lib/dhcp/dhcpd.leases /var/lib/dhcp/dhcpd6.leases
COPY dhcp-snmptrap.sh /usr/local/bin/dhcp-snmptrap.sh
RUN chmod +x /usr/local/bin/dhcp-snmptrap.sh
