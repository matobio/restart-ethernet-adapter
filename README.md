# restart-ethernet-adapter

En la placa base "Asus ROG STRIX Z490-E GAMING", al activar en la BIOS el perfil XMP al arrancar Windows el adaptador de red no detecta cable conectado. Es necesario deshabilitar el adaptar y volver a habilitar.
Ejecutando este script se comprueba si hay conexión y en caso de no haberla reinicia el adaptador.

Para automatizarlo, abrir el programador de tareas y crear una nueva tarea que se ejecute "Al iniciar la sesión un usuario"
