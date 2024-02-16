# Autentificación digest

Lo primero que debemos hacer es habilitar el servicio y reiniciar  apache para ponerlo en marcha.

    a2enmod auth_digest

![alt text](aws.imgs/12.png)

Debemos crear el archivo donde se guardaran todos los usuarios y claves del digest.Ahora creamos el ususario lautaro.

    htdigest -c /etc/apache2/htdigest.txt dominio lautaro

![alt text](aws.imgs/13.png)

Y  vemos el usuario lautaro ya creado.

Por ultimo debemos editar el archivo de nuestra web y añadirle lo siguiente, donde le indicaremos la zona que estrá bajo seguridad y la configuración.

    <Location "/login.html">
        AuthType Digest
        AuthName "dominio"
        AuthDigestDomain /var/www/ProyectoLSMGI/
        AuthDigestProvider file
        AuthUserFile "/etc/apache2/htdigest.txt"
        Require valid-user
    </Location>



![alt text](aws.imgs/14.png)

Para finalizar reiniciamos el servicio de apache y provamos.

Ingresamos a la zona de login de nuestra pagina donde nos debería pedir la contraseña y vemos que nos la pide bien.

![alt text](aws.imgs/15.png)

Ingresando el usuario y la contraseña podemos entrar en la zona protegida y en la url podemos ver la llave que indica que esta bajo digest.
![alt text](aws.imgs/16.png)
