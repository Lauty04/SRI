# Autentificación digest

Lo primero que debemos hacer es habilitar el servicio y reiniciar  apache para ponerlo en marcha.

    a2enmod auth_digest

![alt text](aws.imgs/12.png)

Luego debemos crear el archivo donde se guardaran todos los usuarios y claves del digest.Ahora creamos el ususario lautaro.

    htdigest -c /etc/apache2/htdigest.txt dominio lautaro

![alt text](aws.imgs/13.png)

Y ahí vemos el usuario lautaro ya creado.

Por ultimo debemos editar el archivo sites-available de nuestra pagina y añadirle lo siguiente:

    <Location "/login.html">
        AuthType Digest
        AuthName "dominio"
        AuthDigestDomain /var/www/ProyectoLSMGI/
        AuthDigestProvider file
        AuthUserFile "/etc/apache2/htdigest.txt"
        Require valid-user
    </Location>

donde le decimos el archivo que vamos a poner bajo contraseña y todo lo relacionado al digest.

![alt text](aws.imgs/14.png)

Para finalizar reiniciamos el servicio de apache y provamos.

![alt text](aws.imgs/15.png)

Y entrando con el usuario lautaro podemos entrar.

![alt text](aws.imgs/16.png)
