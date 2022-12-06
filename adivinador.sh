ALEATORIO=$(( $RANDOM % 50 + 1 ))
TEXTO="ESTE ES EL ADIVINADOR"
echo $TEXTO
CONTADOR=0
for i in {1..11} 
do
	CONTADOR=$i
	echo "INGRESE UN NUMERO:"
	read NUMERO
	if [ "$NUMERO" -lt "1" ] || [ "$NUMERO" -gt "50" ]; 
	then
		echo "Tienes que ingresar un numero entre 1 y 50."
		continue
	elif [ "$NUMERO" -lt "$ALEATORIO" ] 
	then
		echo "El numero que buscas es mayor al que ingresaste. Intenta de nuevo."
	elif [ "$NUMERO" -gt "$ALEATORIO" ] 
	then
		echo "El numero que buscas es menor al que ingresaste. Intenta de nuevo."
	else
		break
	fi
done
if [ "$CONTADOR" -le "5" ] 
then
	echo "Adivinar numeros es lo tuyo crack."
	sleep 3
elif [ "$CONTADOR" -ge "6" ] && [ "$CONTADOR" -le "10" ]
then
	echo "Ganaste, solo te llevó" $CONTADOR "intentos."
	sleep 3
else
	echo "definitivamente adivinar numeros no es lo tuyo :("
	sleep 3
fi