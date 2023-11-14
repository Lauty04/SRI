$TTL    86400
@       IN      SOA     dnss.caceres.lauti.com. mail.caceres.lauti.com. (
                              4         
                         604800    
                          86400     
                        2419200   
                          86400 )   
$ORIGIN caceres.lauti.com.
@         IN      NS      dnss
dnss     IN      A       56.23.45.33
www       IN      A       56.23.45.34
ftp	  IN	  A	  73.56.12.35
