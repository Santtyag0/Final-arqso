echo "Buenos dias, $USER"
echo "-------------------------"
OPCION=0
while [ "$OPCION" -ne "3" ]
do

	echo "¿Que puedo hacer por usted?"
	echo "-------------------------"
	echo "1. Mostrar hora en formato de 12 Horas (AM/PM)"
	echo "2. Mostrar el clima del dia de hoy en Bahia Blanca"
	echo "3. Salir"
	echo "-------------------------"
	echo "ELECCION:"
	read OPCION
	case $OPCION in
		1)
			echo "--------------------"
			echo "Son la/s"
			date +"%I:%M %p"
			echo "--------------------"
			;;
		2)
			echo "--------------------"
			curl wttr.in/Bahia-Blanca?0
			echo "--------------------"
			;;


	esac
done
echo "Esto ha sido todo, espero haberle sido de utilidad, hasta pronto $USER."	