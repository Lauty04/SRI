$TTL    86400
@       IN      SOA     dns.valencia.lauti.com. mail.valencia.lauti.com. (
                              4         
                         604800    
                          86400     
                        2419200   
                          86400 )   
$ORIGIN valencia.lauti.com.
@         IN      NS      dns
dns     IN      A       56.23.45.3
www       IN      A       56.23.45.4
ftp       IN      A       56.23.45.5
