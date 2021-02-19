extends Node

""" 1. VARIABLES Y CONSTANTES """

# Tipos de variable
var tipoString : String = "¡Hola mundo!" # String, o cadena de texto, su valor se escribe entre comillas.
var tipoInt : int = 1 # Int, o número entero.
var tipoFloat : float = 1.2 # Float, o número decimal.
var tipoBool : bool = true # Bool, solo puede ser true o false.

# Constantes
const NOMBRE = "Manuel" # Constante, su valor nunca puede cambiar.


func _ready():
	arrays_y_diccionarios()
	operadores_matematicos()
	calculadora_simple(10, 20)
	condicionales_if_y_match()
	bucles_for_y_while()


""" 2. ARRAYS Y DICCIONARIOS """
func arrays_y_diccionarios():
	var nombres = [ # Array.
		"Javier", 
		"Francisco"
	]
	
	var apellidos = { # Diccionario.
		"apellido1": "Ocampos",
		"apellido2": "García"
	}
	
	var array_multidimensional = [ # Array multidimensional.
		"Javier", # Valor 0, de tipo String.
		{ # Valor 1, de tipo diccionario.
			"nombre": "Iván",
			"apellido" : "Ocampos" 
		}
	]
	
	print(nombres[0]) # Array
	# print(apellidos["apellido1"]) # Diccionario
	# print(nombres[0] + " " + apellidos["apellido1"]) # Concatenar variables.
	# print(array_multidimensional[1]["nombre"]) # Array multidimensional


""" 3. OPERADORES MATEMÁTICOS """
func operadores_matematicos():
	# + operador de suma
	# - operador de resta
	# / operador de división
	# * operador de multiplicación
	
	var cifra1 : float = 1
	var cifra2 : float = 2
	var resultado : float # No le asigno ningun valor aún.

	resultado = cifra1 + cifra2 # Esto es una suma, el resultado es 3.
	cifra1 += 1 # Esto es lo mismo que poner: cifra1 = cifra1 + 1
	
	resultado = cifra2 - cifra1 # Esto es una resta, el resultado es 1.
	cifra1 -= 1 # Esto es lo mismo que poner: cifra1 = cifra1 - 1
	
	resultado = cifra1 * cifra2 # Esto es una multiplicación, el resultado es 2.
	cifra1 *= 2 # Esto es lo mismo que poner: cifra1 = cifra1 * 2
	
	resultado = cifra2 / cifra1 # Esto es una división, el resultado es 1.
	cifra1 /= 2 # Esto es lo mismo que poner: cifra1 = cifra1 / 2

func calculadora_simple(cifra1 : float, cifra2 : float):
	# print("El resultado es: " + cifra1 + cifra2)
	print("El resultado es: " + str(cifra1 + cifra2))


""" 4. CONDICIONALES IF Y MATCH """
func condicionales_if_y_match():
	
	""" OPERADORES LÓGICOS """
	# == igual que...
	# === exactamente igual que...
	# != diferente que...
	# > mayor que...
	# >= mayor o igual que...
	# < menor que...
	# <= menor o igual que...
	# ! y not son operadores de negación, por ejemplo "not tipoBool" o "!tipoBool" quiere decir que si la variable tipoBool es igual a false entonces...
	# and y && son operadores de conjunción, por ejemplo "NOMBRE == Manuel and tipoBool" quiere decir que si NOMBRE es igual a Manuel y tipoBool es igual a true entonces...
	# or y || son operadores de disyunción, por ejemplo "NOMBRE == Manuel or NOMBRE == "Javier" quiere decir que si NOMBRE es igual a Manuel o NOMBRE es igual a Javier entonces...
	
	if NOMBRE == "Javier" and not tipoBool: # Si NOMBRE es igual a Javier y tipoBool es igual a false entonces...
		print("El nombre es Javier")
	elif NOMBRE == "Francisco" or NOMBRE == "Arturo": # Usamos elif para decir "y si..." y puede haber tantos elif en un if como desees.
		print("El nombre es Fracisco o Arturo")
	else: # Si no se cumple ninguna condición anterior se ejecuta el else y solo puede haber uno en cada if.
		print("Condicional if: ¡El nombre era Manuel!")
		
	match NOMBRE:
		"Javier": # Si NOMBRE es igual a Javier entonces...
			print("El nombre es Javier")
		"Francisco": # Si NOMBRE es igual a Francisco entonces...
			print("El nombre es Francisco")
		_: # Esto es equivalente al else, si no se cumple ninguna condición, ejecuta lo siguiente.
			print("Condicional match: ¡El nombre era Manuel!")


""" 5. BUCLES FOR Y WHILE """
func bucles_for_y_while():
	for i in [4, 6, 2, "Hola mundo"]: # Va a recorrer el array y repetirse 4 veces.
		print(i) # i va a mostrar los valores del array
		
	for i in range(3): # Va a repetirse 3 veces.
		print(i)
		
	for i in "Hola mundo":
		print(i)
		
	var x = 0
	while x <= 10: # Se va a repetir siempre que x sea menor o igual que 10.
		print(x)
		x += 1
