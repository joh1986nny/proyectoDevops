#!/bin/bash 
# Define la lista del menú aqui
PS3="Selecciona una operación: " 
select opt in "IP Publica" "Listado de Registros - dig" "Listener Puerto 443 - netcat" "Listado Puertos y Conexiones" "Tabla de Rutas" "Ver Menú" salir; 
do 
    case $opt in 
        "IP Publica") 
            ./curl/publicIP.sh 
            echo ""
            ;;
        "Listado de Registros - dig") 
            ./dig/script.sh
            echo ""
            ;; 
        "Listener Puerto 443 - netcat") 
            read -p "Escribe nombre del servidor: " server 
            ./netcat/scripts.sh $server
            echo ""
            ;; 
        "Listado Puertos y Conexiones") 
            ./netstat/script.sh
            echo ""
            ;;
        "Tabla de Rutas") 
            ./routing_table/script.sh
            echo ""
            ;;
        "Ver Menú")
            echo ""
            echo "1) IP Publica" 
            echo "2) Listado de Registros - dig" 
            echo "3) Listener Puerto 443 - netcat" 
            echo "4) Listado Puertos y Conexiones" 
            echo "5) Tabla de Rutas" 
            echo "6) Ver Menú"
            echo "7) Salir"
            ;;
        salir) 
            break 
            ;; 
        *) 
            echo "$REPLY no es una operación válida" 
            ;; 
    esac 
done