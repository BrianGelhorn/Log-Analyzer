if [ ! -e $1 ]; then 
	echo No existe el archivo $1
	exit 1
fi
echo Abriendo archivo $1...
echo El archivo tiene $(wc -l < $1) lineas de log

echo El archivo tiene: 

echo $(grep "INFO" $1 | wc -l) Lineas de informacion
echo $(grep "ERROR" $1 | wc -l) Errores
echo $(grep "WARN" $1 | wc -l) Advertencias
