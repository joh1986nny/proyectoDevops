#Listado de puertos con listeners
echo "Listado de puertos con Listeners"
sudo netstat -tunlp
echo ""
echo "Listado de conexiones establecidas"
# Listado de conexiones establecidas
sudo netstat -a | grep ESTABLECIDO