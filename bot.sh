echo "Buenos dias, $USER"
OPCION=0
while [ "$OPCION" -ne "3" ]
do

	echo "Elija la opción que desea."
	echo "-"
	echo "1)Mostrar hora en formato de 12 Horas."
	echo "2)Mostrar el clima del día de hoy en Bahía Blanca."
	echo "3)Salir"
	echo "-"
	echo "Opción:"
	read OPCION
	case $OPCION in
		1)
			clear
			echo "-"
			echo "Son la/s"
			date +"%I:%M %p"
			echo "-"
			;;
		2)
			clear
			echo "-"
			curl wttr.in/Bahia-Blanca?0
			echo "-"
			;;
	esac
done
echo "el programa se cerrará."	
sleep 1