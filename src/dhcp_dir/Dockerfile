FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y isc-dhcp-server && \
    rm -rf /var/lib/apt/lists/*
RUN touch /var/lib/dhcp/dhcpd.leases /var/lib/dhcp/dhcpd6.leases
