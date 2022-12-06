numeroRand=$(( $RANDOM % 50 + 1 ))
contador=0
echo "-----------------------------------------------------------------------------"
echo "SE GENERÓ UN NUMERO ALEATORIO ENTRE 1 Y 50, TENES 10 INTENTOS PARA ADIVINARLO."
echo "-----------------------------------------------------------------------------"
for i in {1..11} 
do	
	contador=$i
	if [ "$i" -lt "11" ];
		then
		echo "INTENTO" $contador
		echo "INGRESE UN NUMERO:"
		read numero
		if [ "$numero" -lt "1" ] || [ "$numero" -gt "50" ]; 
		then
			echo "el numero ingresado debe estar entre 1 y 50."
			continue
		elif [ "$numero" -lt "$numeroRand" ] 
		then
			clear
			echo "El numero aleatorio es MAYOR a $numero."
		elif [ "$numero" -gt "$numeroRand" ] 
		then
			clear
			echo "El numero aleatorio es MENOR al $numero."
		else
			break
		fi
	else
		break
	fi
done
if [ "$contador" -le "5" ] 
then
	echo "Adivinar numeros es lo tuyo crack."
	sleep 5
elif [ "$contador" -ge "6" ] && [ "$contador" -le "10" ]
then
	echo "Ganaste, solo te llevó $contador intentos."
	sleep 5
else
	echo "definitivamente adivinar numeros no es lo tuyo :("
	sleep 5
fi