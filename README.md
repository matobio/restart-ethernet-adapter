# restart-ethernet-adapter

En la placa base "Asus ROG STRIX Z490-E GAMING", al activar en la BIOS el perfil XMP al arrancar Windows el adaptador de red no detecta cable conectado. Es necesario deshabilitar el adaptar y volver a habilitar.
Ejecutando este script se comprueba si hay conexión y en caso de no haberla reinicia el adaptador.

Se puede instalar como servicio de Windows con
```
sc create "HabilitarAdaptadorEthernet" start=auto displayname="HabilitarAdaptadorEthernet" binpath=C:\scriptHabilitarAdaptadorRed.bat
```
