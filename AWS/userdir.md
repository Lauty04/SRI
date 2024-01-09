# Módulo userdir

Lo primero que haremos es configurar es el fichero /etc/apache2/mods-available/userdir.conf donde indicaremos cual es la carpeta donde estaría la pagina del usuario buscado.

    <Directory /home/*/public_html>
    AllowOverride FileInfo AuthConfig Limit Indexes
    Options MultiViews Indexes SymLinksIfOwnerMatch IncludesNoExec
    Require method GET POST OPTIONS
    </Directory>

Y luego activar el modulo:

    a2enmod userdir

Con esto tendriamos terminada la configuración pero tenemos un grave problema con el tema de privilegios a lo que debemos darle a cualquier carpeta los permisos 755 y a ficheros 644, por lo que al home,la carpeta public y las carpetas que contagan archivos como la de css,imagenes, videos,etc.
