#!/bin/sh
# DHCP event SNMP trap sender
# Usage: dhcp-snmptrap.sh <event> <client_ip> <client_mac>
# Events: commit, release, expiry

EVENT="$1"
CLIENT_IP="$2"
CLIENT_MAC="$3"

ZABBIX_HOST="10.22.0.253"
COMMUNITY="nextgenerationcom"

# Enterprise OID base: .1.3.6.1.4.1.99999.1 (DHCP traps)
BASE_OID=".1.3.6.1.4.1.99999.1"

case "$EVENT" in
    commit)  TRAP_OID="${BASE_OID}.1" ;;  # DHCP lease assigned
    release) TRAP_OID="${BASE_OID}.2" ;;  # DHCP lease released
    expiry)  TRAP_OID="${BASE_OID}.3" ;;  # DHCP lease expired
    *)       exit 1 ;;
esac

snmptrap -v 2c -c "$COMMUNITY" "$ZABBIX_HOST" "" "$TRAP_OID" \
    "${BASE_OID}.10" s "$CLIENT_IP" \
    "${BASE_OID}.11" s "$CLIENT_MAC" \
    "${BASE_OID}.12" s "$EVENT"
