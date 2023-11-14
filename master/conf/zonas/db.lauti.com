$TTL    1d ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     lauti.com. root.lauti.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
@     IN      NS      lauti.com.

; name servers - A records
lauti.com.            IN      A      56.23.45.2
www.lauti.com.        IN      A      56.23.45.3 
ftp.lauti.com.        IN      A      56.23.45.4

$ORIGIN valencia.lauti.com.

@	IN	NS	dns
dns	IN	A	56.23.45.3

$ORIGIN caceres.lauti.com.

@	IN	NS	dnss
dnss	IN	A	56.23.45.33
