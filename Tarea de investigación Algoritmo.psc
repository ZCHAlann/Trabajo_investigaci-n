///ejercicios 1-9
//Determinar cu�nto se debe pagar por cierta cantidad de colas, considerando que si son m�s
//	de 23 colas, el costo por unidad es de $0,50 caso contrario el precio ser� 20% mas.
//Al costo resultante calcular el 12% del iva. Se pide presentar: cantidad comprada, el costo �por
//	unidad, el total sin iva el iva y el total a pagar.


funcion ejercicio1
	
    Definir cantidad_comprada, costo_por_unidad, costo_total_sin_iva, iva, total_a_pagar Como Real
    
    Escribir "Ingrese la cantidad de colas compradas: "
    Leer cantidad_comprada
    
    Si cantidad_comprada > 23 Entonces
        costo_por_unidad = 0.50
    Sino
        costo_por_unidad = 0.50 * 1.20
    FinSi
    
    costo_total_sin_iva = cantidad_comprada * costo_por_unidad
    iva = 0.12 * costo_total_sin_iva
    total_a_pagar = costo_total_sin_iva + iva
    
    Escribir "Cantidad comprada: ", cantidad_comprada
    Escribir "Costo por unidad: $", costo_por_unidad
    Escribir "Total sin IVA: $", costo_total_sin_iva
    Escribir "IVA (12%): $", iva
    Escribir "Total a pagar: $", total_a_pagar
FinFuncion

//La asociaci�n de vinicultores tiene como pol�tica fijar un precio inicial al kilo
//de uva, la cual se clasifica en tipos A y B, y adem�s en tama�os 1 y 2.
//Cuando se realiza la venta del producto, �sta es de un solo tipo y tama�o, se
//requiere determinar cu�nto recibir� un productor por la uva que entrega en un
//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio
//	inicial cuando es de tama�o 1; y 30 si es de tama�o 2. Si es de tipo B, se rebajan
//	30 cuando es de tama�o 1, y 50 cuando es de tama�o 2.
//	Realice un algoritmo para determinar la ganancia obtenida
Funcion  ejercicio2
    Definir  tamano_uva, precio_inicial, ganancia Como Real
	definir tipo_uva Como Caracter	
    Escribir "Ingrese el tipo de uva (A o B): "
    Leer tipo_uva
	
    Escribir "Ingrese el tama�o de la uva (1 o 2): "
    Leer tamano_uva
	
    Escribir "Ingrese el precio inicial por kilo de uva: "
    Leer precio_inicial
	
    Si tipo_uva = "A" Entonces
        Si tamano_uva = 1 Entonces
            ganancia = precio_inicial + 20
        Sino
            ganancia = precio_inicial + 30
        FinSi
    Sino
        Si tamano_uva = 1 Entonces
            ganancia = precio_inicial - 30
        Sino
            ganancia = precio_inicial - 50
        FinSi
    FinSi
	
    Escribir "La ganancia obtenida es de $", ganancia
FinFuncion
//Dado dos n�meros obtener el residuo sin el operador mod, %
Funcion ejercicio3
    Definir dividendo, divisor, residuo Como Entero
	
    Escribir "Ingrese el dividendo: "
    Leer dividendo
	
    Escribir "Ingrese el divisor: "
    Leer divisor
	
    residuo = dividendo
	
    Mientras residuo >= divisor Hacer
        residuo = residuo - divisor
    FinMientras
	
    Escribir "El residuo de la divisi�n es: ", residuo
FinFuncion
//El consultorio del Dr. Paez tiene como pol�tica cobrar la consulta con
//base en el n�mero de cita, de la siguiente forma:
//	Las tres primeras citas a $200.00 c/u.
//	Las siguientes dos citas a $150.00 c/u.
//	Las tres siguientes citas a $100.00 c/u.
//	Las restantes a $50.00 c/u, mientras dure el tratamiento.
//	Se requiere un algoritmo para determinar:
//Cu�nto pagar� el paciente por la cita.
//	El monto de lo que ha pagado el paciente por el tratamiento.
//	Para la soluci�n de este problema se requiere saber qu� n�mero de cita se efectuar�, con el
//cual se podr� determinar el costo que tendr� la consulta y cu�nto se ha gastado en el tratamiento.
funcion ejercicio4
	definir n, pr_ci, c_con como entero  // Declarar variables enteras n, pr_ci y c_con.
	
	Escribir "Ingrese el n�mero de cita: "  // Solicitar al usuario el n�mero de cita.
	leer n  // Leer y almacenar el n�mero de cita ingresado.
	
	si n >= 1 & n <= 3 Entonces  // Comprobar si el n�mero de cita est� en el rango 1 a 3.
		pr_ci = 200 * n  // Calcular el precio por cita como $200 multiplicado por el n�mero de citas.
		c_con = 200  // Establecer el costo de la consulta en $200.
	SiNo
		si n >= 4 & n <= 5 Entonces  // Comprobar si el n�mero de cita est� en el rango 4 a 5.
			pr_ci = 600 + (150 * n)  // Calcular el precio por cita como $200 m�s $150 por cada cita adicional.
			c_con = 150  // Establecer el costo de la consulta en $150.
		SiNo
			si n >= 6 & n <= 8 Entonces  // Comprobar si el n�mero de cita est� en el rango 6 a 8.
				pr_ci = 900 + (100 * n)  // Calcular el precio por cita como $350 m�s $100 por cada cita adicional.
				c_con = 100  // Establecer el costo de la consulta en $100.
			SiNo
				pr_ci = 1200 + (50 * n)  // Calcular el precio por cita como $450 m�s $50 por cada cita adicional.
				c_con = 50  // Establecer el costo de la consulta en $50.
			FinSi
		FinSi
	FinSi
	
	Escribir "N�mero de cita: ", n  // Mostrar el n�mero de cita ingresado.
	Escribir "Valor a pagar por la cita: ", c_con  // Mostrar el costo de la consulta.
	Escribir "Monto total por las consultas recibidas: ", pr_ci  // Mostrar el monto total por todas las citas recibidas.
FinFuncion
//Escribir un algoritmo que lea cuatro n�meros y determine si el numero 1
//es la mitad del n�mero 2; Y si el numero 3 es divisor del numero4.
Funcion  ejercicio5
	Escribir "Ingrese 4 n�meros."
    Definir numero1, numero2, numero3, numero4 Como Entero
	
    Escribir "Ingrese el primer n�mero: "
    Leer numero1
	
    Escribir "Ingrese el segundo n�mero: "
    Leer numero2
	
    Escribir "Ingrese el tercer n�mero: "
    Leer numero3
	
    Escribir "Ingrese el cuarto n�mero: "
    Leer numero4
	
    Si (numero2 == numero1 * 2) Entonces
        Escribir "El n�mero 1 es la mitad del n�mero 2."
    Sino
        Escribir "El n�mero 1 no es la mitad del n�mero 2."
    FinSi
	
    Si (numero4 % numero3 == 0) Entonces
        Escribir "El n�mero 3 es divisor del n�mero 4."
    Sino
        Escribir "El n�mero 3 no es divisor del n�mero 4."
    FinSi
FinFuncion
//) El banco XYZ ha decidido aumentar el l�mite de cr�dito de las tarjetas de cr�dito
//de sus clientes, para esto considera que:
//Si su cliente tiene tarjeta tipo 1, el aumento ser� del 25%.
//Si tiene tipo 2 el aumento ser� del 35%
//Si tiene tipo 3, el aumento ser� del 40%
//Para cualquier otro tipo ser� del 50%
//Se pide realizar un algoritmo que ayude al banco a determinar el nuevo l�mite
//de cr�dito que tendr� una persona en su tarjeta considerando que despu�s
//del aumento de porcentaje se tendr� que subir $20 adicionales a todas las tarjetas
Funcion  ejercicio6
	Escribir "L�mite crediticio"
    Definir tipo_tarjeta Como Entero
    Definir limite_inicial Como Real
    Definir aumento_porcentaje Como Real
    Definir nuevo_limite Como Real
	
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
    Leer tipo_tarjeta
	
    Escribir "Ingrese el l�mite de cr�dito inicial: "
    Leer limite_inicial
	
    Si tipo_tarjeta = 1 Entonces
        aumento_porcentaje = 25
    Sino 
		Si tipo_tarjeta = 2 Entonces
			aumento_porcentaje = 35
		Sino
			Si tipo_tarjeta = 3 Entonces
				aumento_porcentaje = 40
			Sino
				aumento_porcentaje = 50
			FinSi
		FinSi
	FinSi
	
	
	nuevo_limite = limite_inicial + (limite_inicial * aumento_porcentaje / 100) + 20.0
	
	Escribir "El nuevo l�mite de cr�dito es: $", nuevo_limite
FinFuncion
//Escribir un algoritmo que lea cuatro n�meros y determine si el numero 1 es divisor del
//numero3 Y si el numero 2 es el doble del numero4.
Funcion  ejercicio7
	Escribir "Ingrese 4 n�meros."
    Definir numero1, numero2, numero3, numero4 Como Entero
	
    Escribir "Ingrese el primer n�mero: "
    Leer numero1
	
    Escribir "Ingrese el segundo n�mero: "
    Leer numero2
	
    Escribir "Ingrese el tercer n�mero: "
    Leer numero3
	
    Escribir "Ingrese el cuarto n�mero: "
    Leer numero4
	
    Si (numero3 MOD numero1 = 0) Entonces
        Escribir "El n�mero 1 es divisor del n�mero 3."
    Sino
        Escribir "El n�mero 1 no es divisor del n�mero 3."
    FinSi
	
    Si (numero2 = numero4 * 2) Entonces
        Escribir "El n�mero 2 es el doble del n�mero 4."
    Sino
        Escribir "El n�mero 2 no es el doble del n�mero 4."
    FinSi
FinFuncion
//El banco POO ha decidido aumentar el l�mite de cr�dito de las tarjetas de cr�dito
//de sus clientes, para esto considera que:
//Si su cliente tiene tarjeta tipo 1, el aumento ser� del $100 .
//Si tiene tipo 2 el aumento ser� del $200
//Si tiene tipo 3, el aumento ser� del $300
//Para cualquier otro tipo ser� del 500
//Realizar un algoritmo que ayude al banco a determinar el nuevo l�mite
//de cr�dito que tendr� una persona en su tarjeta considerando que
//despu�s del aumento se tendr� que subir 10% adicionales a todas las tarjetas
Funcion  ejercicio8
	Escribir "L�mite crediticio."
    Definir tipo_tarjeta Como Entero
    Definir limite_inicial, aumento_dolares Como Real
    Definir nuevo_limite Como Real
	
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
    Leer tipo_tarjeta
	
    Escribir "Ingrese el l�mite de cr�dito inicial: "
    Leer limite_inicial
	
    Si tipo_tarjeta = 1 Entonces
        aumento_dolares = 100.0
    Sino 
		Si tipo_tarjeta = 2 Entonces
			aumento_dolares = 200.0
		Sino 
			Si tipo_tarjeta = 3 Entonces
				aumento_dolares = 300.0
			Sino
				aumento_dolares = 500.0
			FinSi
		FinSi
	FinSi
	
	
	nuevo_limite = (limite_inicial + aumento_dolares) * 1.10
	
	Escribir "El nuevo l�mite de cr�dito es: $", nuevo_limite
FinFuncion
//Pedir al usuario un n�mero y mostrar si es negativo menor que -20, sino mostrar si es
//positivo par o impar m�ltiplo de 7.
Funcion ejercicio9
	Escribir "Analizar n�mero."
    Definir numero Como Entero
	
    Escribir "Ingrese un n�mero: "
    Leer numero
	
    Si numero < -20 Entonces
        Escribir "El n�mero es negativo y menor que -20."
    Sino
		Si numero > 0 Entonces
			Si numero MOD 2 = 0 Entonces
				Escribir "El n�mero es positivo y par."
			Sino 
				Si numero MOD 7 = 0 Entonces
					Escribir "El n�mero es positivo, impar y m�ltiplo de 7."
				Sino
					Escribir "El n�mero es positivo e impar, pero no es m�ltiplo de 7."
				FinSi
			finsi
		FinSi
	FinSi
FinFuncion
///
///ejercicios 10-18
Funcion ejercicio10 
	// Declaramos las variables
    Definir precioInicial, tama�oPitajaya, precioFinal, descuento, iva Como Real
    Definir tipoPitajaya Como Caracter
    // Solicitamos al usuario el precio inicial de la pitajaya
    Escribir "Ingrese el precio inicial por quintal de pitajaya: "
    Leer precioInicial
    
    // Solicitamos al usuario el tipo de pitajaya (Amarilla o Colorada)
    Escribir "Ingrese el tipo de pitajaya (Amarilla o Colorada): "
    Leer tipoPitajaya
    
    // Solicitamos al usuario el tama�o de la pitajaya (1 o 2)
    Escribir "Ingrese el tama�o de la pitajaya (1 o 2): "
    Leer tama�oPitajaya
    
    // Calculamos el descuento o recargo basado en el tipo y tama�o de pitajaya
    Si tipoPitajaya = "Amarilla" Entonces
        Si tama�oPitajaya = 1 Entonces
            descuento <- 10
        Sino
            descuento <- 15
        FinSi
        descuento <- descuento + 5
    Sino
        Si tama�oPitajaya = 1 Entonces
            descuento <- -20
        Sino
            descuento <- -20
        FinSi
        descuento <- descuento - (descuento * 0.2)  // Aplicar un 20% de descuento
    FinSi
    
    // Se calcula el precio final
    precioFinal <- precioInicial + descuento
    
    // Aplicamos el descuento del 5% y el 12% de IVA
    descuento <- precioFinal * 0.05  // 5% de descuento
    precioFinal <- precioFinal - descuento
    iva <- precioFinal * 0.12  // 12% de IVA
    precioFinal <- precioFinal + iva
    
    // Se muestra el precio de embarque final
    Escribir "El precio de embarque es: ", precioFinal
FinFuncion

Funcion ejercicio11
	// Declaramos las variables
	Escribir "Analizar n�mero."
    Definir numero Como Entero
    
    // Se le solicita al usuario un n�mero
    Escribir "Ingrese un n�mero: "
    Leer numero
    
    // Verificamos si es par y menor que 10
    Si numero % 2 = 0 Y numero < 10 Entonces
        Escribir "El n�mero es par y menor que 10."
		// Si no es par y menor que 10, verificamos si es negativo e impar o negativo divisible por 5
    Sino
        Si numero < 0 Entonces
            Si numero % 2 <> 0 Entonces
                Escribir "El n�mero es negativo e impar."
            Sino
                Si numero % 5 = 0 Entonces
                    Escribir "El n�mero es negativo y divisible por 5."
                Sino
                    Escribir "El n�mero no cumple ninguna de las condiciones."
                FinSi
            FinSi
        Sino
            Escribir "El n�mero no es par y no es menor que 10, ni es negativo."
        FinSi
    FinSi
FinFuncion

Funcion ejercicio12
	// Declaramos las variables
    Definir clave, materiaPrima, costoProduccion, costoManoDeObra, gastosFabricacion, PV Como Real
    //precioventa = PV
    // Se solicita al usuario la clave del art�culo (1, 2, 3, 4, 5 o 6)
    Escribir "Ingrese la clave del art�culo (1, 2, 3, 4, 5 o 6): "
    Leer clave
    
    // Solicitamos al usuario el costo de la materia prima
    Escribir "Ingrese el costo de la materia prima: "
    Leer materiaPrima
    
    // Se calcula el costo de la mano de obra
    Si clave = 3 O clave = 4 Entonces
        costoManoDeObra <- 0.75 * materiaPrima
    Sino
        Si clave = 1 O clave = 5 Entonces
            costoManoDeObra <- 0.80 * materiaPrima
        Sino
            costoManoDeObra <- 0.85 * materiaPrima
        FinSi
    FinSi
    
    // Calculamos el gasto de fabricaci�n
    Si clave = 2 O clave = 5 Entonces
        gastosFabricacion <- 0.30 * materiaPrima
    Sino
        Si clave = 3 O clave = 6 Entonces
            gastosFabricacion <- 0.35 * materiaPrima
        Sino
            gastosFabricacion <- 0.28 * materiaPrima
        FinSi
    FinSi
    
    // Calculamos el costo de producci�n
    costoProduccion <- materiaPrima + costoManoDeObra + gastosFabricacion
    
    // Calculamos el precio de venta
    PV <- costoProduccion + 0.45 * costoProduccion
    
    // Se muestra el precio de venta
    Escribir "El precio de venta del art�culo es: ", PV
FinFuncion

Funcion ejercicio13
	Escribir "Contar d�gitos de un n�mero"
	definir n,d Como real
	Definir cont,i Como Entero
	Definir nu, le Como Caracter
	Escribir "Ingrese el n�mero: ";leer n
	nu = ConvertirATexto(n)
	d = Longitud(nu)
	cont = 0
	Para i<-0 Hasta d-1 Con Paso 1 Hacer
		le = SubCadena(nu,i,i)
		si le = "." Entonces
			cont = cont + 1
		FinSi
	FinPara
	Escribir "El n�mero ",n , " tiene ", (d-cont), " d�gitos."
FinFuncion

Funcion ejercicio14
	Escribir "Analizar si un n�mero es capicua o no"
	Definir n, i, lo Como Entero
	Definir nu, n_i, le Como Caracter
	Escribir "Ingrese el n�mero: ";leer n
	nu = ConvertirATexto(n)
	n_i = ""
	lo = Longitud(nu)
	Para i<-(lo-1) Hasta 0 Con Paso -1 Hacer
		le = Subcadena(nu,i,i)
		n_i = n_i + le
	FinPara
	Si nu == n_i Entonces
		Escribir "El n�mero ",n," es capicua"
	SiNo
		Escribir "El n�mero ",n," no es capicua"
	FinSi
FinFuncion

Funcion ejercicio15
	// Declaramos las variables
	Escribir "Divisores de un n�mero"
    Definir numero, divisor Como Entero
    
    // Se solicita al usuario un n�mero
    Escribir "Ingrese un n�mero: "
    Leer numero
    
    Escribir "Los divisores de ", numero, " son:"
    
    // Calculamos y  mostramos los divisores del n�mero
    Para divisor <- 1 Hasta numero Hacer
        Si numero % divisor = 0 Entonces
            Escribir divisor
        FinSi
    FinPara
FinFuncion

Funcion ejercicio16
	// Declaramos variables
	Escribir "Suma de divisores"
    Definir numero, divisor, suma Como Entero
    
    // Inicializamos la suma a 0
    suma <- 0
    
    // Solicitamos al usuario un n�mero
    Escribir "Ingrese un n�mero: "
    Leer numero
    
    // Calculamos la suma de los divisores del n�mero
    Para divisor <- 1 Hasta numero Hacer
        Si numero % divisor = 0 Entonces
            suma <- suma + divisor
        FinSi
    FinPara
    
    // Se muestra la suma de los divisores
    Escribir "La suma de los divisores de ", numero, " es: ", suma
FinFuncion

Funcion ejercicio17
	Escribir "Contador de divisores"
	// Declaracmos las variables
    Definir numero, divisor, cantidadDivisores, arre, c,i Como Entero
    Dimension arre[1000]
    // Inicializamos la cantidad de divisores a 0
    cantidadDivisores <- 0
    
    // Se solicita al usuario un n�mero
    Escribir "Ingrese un n�mero: "
    Leer numero
    c = 0
    // Calculamos la cantidad de divisores del n�mero
    Para divisor <- 1 Hasta numero Con Paso 1 Hacer
        Si numero % divisor = 0 Entonces
            cantidadDivisores <- cantidadDivisores + 1
			arre[c]=divisor
			c = c + 1
        FinSi
    FinPara
    
    // Mostramos la cantidad de divisores
    Escribir "El n�mero ", numero, " tiene ", cantidadDivisores, " divisores."
	Escribir "Los divisores de ",numero, " son: "
	Para i<-0 Hasta c-1 Con Paso 1 Hacer
		Escribir Sin Saltar arre[i], " "
	Fin Para
	Escribir " "
FinFuncion

Funcion ejercicio18
	// Declaramos las variables
	Escribir "Analizar si un n�mero es perfecto"
    Definir numero, divisor, sumaDivisores Como Entero
    
    // Inicializamos la suma de divisores a 0
    sumaDivisores <- 0
    
    // Solicitamos al usuario un n�mero
    Escribir "Ingrese un n�mero: "
    Leer numero
    
    // Calculamos la suma de los divisores del n�mero
    Para divisor <- 1 Hasta numero / 2 Hacer
        Si numero % divisor = 0 Entonces
            sumaDivisores <- sumaDivisores + divisor
        FinSi
    FinPara
    
    // Se verifica si el n�mero es perfecto
    Si sumaDivisores = numero Entonces
        Escribir "El n�mero ", numero, " es un n�mero perfecto."
    Sino
        Escribir "El n�mero ", numero, " no es un n�mero perfecto."
    FinSi
FinFuncion


Funcion i <- presentar_menu(menu,n)
	Definir i Como Entero
	Definir v Como Logico
	v = Falso
	Repetir// este bucle repetir me va ayudar a evaluar si el usuario digita una opci�n que no sea v�lida
		Borrar Pantalla
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir menu[i]
		FinPara
		Escribir "Digite una opci�n: "
		leer i
		si i >= 1 & i <= (n-2) Entonces
			v = Verdadero
		SiNo
			Escribir "Opci�n inv�lida."
			Esperar 1 Segundos
		FinSi
	Hasta Que v = Verdadero
FinFuncion

Funcion presentar_menu_ejer(menu,n)//esta funcion es la encargada de presentar los menus de los ejercicios, no usamos la otra funcion porque esa me pide de una vez la opcion y tiene un bucle que me evalua si el usuario ingresa una opcion correcta y eso los debo hacer con el seg�n
	Definir i Como Entero
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir menu[i]
	FinPara
FinFuncion
///
///ejercicios 19-21
Funcion a <- suma_de_divisores(j)
	definir c, m, a Como Entero
	a = 0
	Para c<-1 Hasta j-1 Con Paso 1 Hacer
		si (j%c == 0) Entonces
			a = a + c
		FinSi
	FinPara
FinFuncion


Funcion x <- numero_primo(j)
	Definir n, c, arre, c1, n1, x Como entero
	//Escribir "Ingrese el n�mero: "; leer n1
	n1 = j
	dimension arre[1000]
	c = 1; c1 = 0
	n = n1
	Repetir
		si (n%c) == 0 Entonces
			arre[c1] = c
			c1 = c1 + 1
			n = n/c
			c = 1
		FinSi
		c = c + 1
	Hasta Que n = 1
	
	si (c1 == 2) &  (arre[0] == 1 & arre[1] == n1) Entonces
		x = n1
	SiNo
		x = 0
	FinSi
FinFuncion

Funcion ejercicio19
	Escribir "Comprobar si un n�mero es primo o no"
	definir n, m Como Entero
	Escribir "Ingrese el n�mero: "; leer n
	m = numero_primo(n)
	si m <> 0 Entonces
		Escribir n, " es un n�mero primo."
	SiNo
		Escribir n, " no es un n�mero primo."
	FinSi
	
FinFuncion

Funcion ejercicio20
	Escribir "Comprobar los n�meros ingresados son primos gemelos"
	Definir arre, c, n, m Como Entero
	Dimension arre[1000]
	c = 2
	Escribir "Ingrese los n�meros: "
	Repetir
		leer n
		m = numero_primo(n)
		si m <> 0 Entonces
			arre[(2-c)] = m
			c = c - 1
		SiNo
			arre[(2-c)] = 0
			c = c - 1
		FinSi
	Hasta Que c = 0
	si (arre[0] - arre[1] == 2) | (arre[0] - arre[1] == -2) Entonces
		Escribir "Los n�meros son primos gemelos."
	SiNo
		Escribir "Los n�meros no son primos gemelos."
	FinSi
FinFuncion

Funcion ejercicio21
	Escribir "Comprobar los n�meros ingresados son primos amigos"
	Definir i, p, arre Como Entero
	i = 2
	Dimension arre[2]
	Escribir "Ingrese los n�meros: "
	Repetir
		leer p
		arre[(2-i)] = suma_de_divisores(p)
		i = i - 1
	Hasta Que i = 0
	si arre[0] == arre[1] Entonces
		Escribir "Los n�meros son primos amigos."
	SiNo
		Escribir "Los n�meros no son primos amigos."
	FinSi
FinFuncion
///


///Ejercicios num�ricos
//Funcion que ejecutar� los ejercicios num�ricos del 1 al 11
Funcion eje_1_11// esto debo hacer con los ejercicios de caracteres y la otra mitad de ejercicios de n�meros
	Definir menu_1_11 Como caracter// defiimos el arreglo que gaudar� las opciones del men�
	Definir nu Como Entero// esta variable va leer la opcion que digite el usuario
	Definir v Como Logico// banderilla para saber que se el men� y la elecci�n de algoritmos a ejecutar termine, finalizando el bucle repetir y volviendo al men� n�meros
	v = Falso// mientras sea falso se repetir� el bucle repetir
	Dimension menu_1_11[4]// dimensionamos el men�
	menu_1_11[0] = " 1. Colas compradas        2. Vinicultores           3. Residuo de una divisi�n"
	menu_1_11[1] = " 4. Consultorio Dr.Paez    5. Analizar n�meros       6. Banco XYZ"
	menu_1_11[2] = " 7. Analizar n�meros 2     8. Banco POO              9. Analizar n�meros 3"
	menu_1_11[3] = "10. Pitahayas             11. Analizar n�meros 4    12. Salir"
	Escribir " "
	Repetir
		Borrar Pantalla
		Escribir "Ejercicios del 1 al 11"
		presentar_menu_ejer(menu_1_11,4)// presentamos el men�
		Escribir " "
		Escribir "Ingrese el �ndice del algortimo a ejecutar: "
		leer nu
		Segun nu Hacer
			1:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio1// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			2:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio2// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			3:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio3// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			4:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio4// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			5:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio5// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			6:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio6// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			7:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio7// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			8:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio8// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			9:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio9// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			10:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio10// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			11:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio11// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla	
			12:// si presiona 12 es para salir, en este caso regresar al men� n�meros
				v = Verdadero// se termina el ciclo
				Borrar Pantalla
				Escribir "Regresando al men� de ejercicios num�ricos..."
				Esperar 1 Segundos
			De Otro Modo:// en caso de que el usuario ingrese un �ndice incorreto
				Escribir "Ingrese un �ndice v�lido."
				Esperar 1 Segundos
		FinSegun
	Hasta Que v = Verdadero
FinFuncion


//Funcion que ejecutar� los ejercicios num�ricos del 12 al 21
Funcion eje_12_21// esto debo hacer con los ejercicios de caracteres y la otra mitad de ejercicios de n�meros
	Definir menu_12_21 Como caracter// defiimos el arreglo que gaudar� las opciones del men�
	Definir nu Como Entero// esta variable va leer la opcion que digite el usuario
	Definir v Como Logico// banderilla para saber que se el men� y la elecci�n de algoritmos a ejecutar termine, finalizando el bucle repetir y volviendo al men� n�meros
	v = Falso// mientras sea falso se repetir� el bucle repetir
	Dimension menu_12_21[4]// dimensionamos el men�
	menu_12_21[0] = "12. F�brica El cometa      13. Contar d�gitos       14. Capicua"
	menu_12_21[1] = "15. Divisores de n�mero    16. Suma de divisores    17. Cantidad de divisores"
	menu_12_21[2] = "18. N�mero perfecto        19. N�mero primo         20. Primos gemelos"
	menu_12_21[3] = "21. Primos amigos          22. Salir"
	Repetir
		Borrar Pantalla
		Escribir "Ejercicios del 12 al 21"
		presentar_menu_ejer(menu_12_21,4)// presentamos el men�
		Escribir " "
		Escribir "Ingrese el �ndice del algortimo a ejecutar: "
		leer nu
		Segun nu Hacer
			12:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio12// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			13:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio13// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			14:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio14// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			15:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio15// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			16:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio16// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			17:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio17// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			18:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio18// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			19:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio19// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			20:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio20// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			21:// del 12 al 21 ir�an las funciones de los ejercicios
				Borrar Pantalla
				ejercicio21// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			22:// si presiona 22 es para salir, en este caso regresar al men� n�meros
				v = Verdadero// se termina el ciclo
				Borrar Pantalla
				Escribir "Regresando al men� de ejercicios num�ricos..."
				Esperar 1 Segundos
			De Otro Modo:// en caso de que el usuario ingrese un �ndice incorreto
				Escribir "Ingrese un �ndice v�lido."
				Esperar 1 Segundos
		FinSegun
	Hasta Que v = Verdadero
FinFuncion
///

///ejercicios de caracter del 1 - 6
Funcion ejercicio_c1
	Escribir "Presentar la siguiente secuencia 2 2 4 8 32 256"
	definir n, n1, m, m1, m2, p Como real// declaramos las variables a usar
	n = 6// pedimos el n�mero
	p = 2// inicializamos con el primer valor de la secuencia
	n1 = 0
	m1 = 1
	m = 1
	m2 = 0
	Repetir
		m2 = m// guardamos el primer valor de m; ya que m1 luego va a guardar de m2
		si n1 = 1 Entonces// a la segunda vuelta m siempre va a valer 2
			m = 2
		FinSi
		Escribir p// escribimos el primer valor de p
		m = m1 * m// hacemos que m se multiplique por m1, obteniendo la multiplicaci�n de la m anterior con la m actual
		p = p * m// multiplicamos p por el valor de m
		m1 = m2// m1 guarda el valor de m2, que es el valor de la m anterior, antes de que sea multiplicada por m1
		n1 = n1 + 1// hacemos que el bucle avance
	Hasta Que n1 == n
FinFuncion

Funcion ejercicio_c2
	definir a1, a2,n,m, c1, ci,cp,sum_i,sum_p Como real // DEFINIMOS
	//Escribir "Ingrese la cantidad de numeros a ingresar: ";leer n// pedimoslacantidad de numerosaingresar para llenar el arreglo
	Dimension a1[1000]// dimensionamos el arreglo original
	Dimension a2[2]// dimensionamos el arreglo que va a guardar los promedios
	ci=0; cp=0//incializamo slos contadores para cada numero
	Escribir "Ingrese los numeros del arreglo original: "//llenamosel arreglo original
	Escribir "Ingrese un n�mero negativo para detener el ingreso."
	//Para c1<-0 Hasta n-1 Con Paso 1 Hacer
	//leer a1[c1]//llenamosel arreglo original
	//Fin Para
	m = 0
	Repetir
		leer n 
		si n >= 0 Entonces
			a1[m] = n
			m = m + 1
		FinSi
	Hasta Que n < 0
	
	sum_p = 0; sum_i= 0
	Para c1<-0 Hasta m-1 Con Paso 1 Hacer// este para va evaluando cadanumerodel arreglo viendo si es par o impar
		si (a1[c1] % 2== 0) Entonces// de ser par
			cp=cp+1// sesumaunoalcontador
			sum_p=sum_p + a1[c1]// se calcula la suma acumulada
		SiNo
			ci=ci+1// sesumaunoalcontador
			sum_i=sum_i + a1[c1]// se calcula la suma acumulada
		FinSi
	Fin Para
	si cp = 0 Entonces// estos condicionales me quitan el error de division de 0,en caso de que solo se ingresen numeros pares o solo impares
		cp=1
	FinSi
	si ci =0 Entonces
		ci = 1
	FinSi
	a2[0] = sum_p/cp// sellena elotro arreglo(promedio de pares)
	a2[1] = sum_i/ci// sellena elotro arreglo(promedio de impares)
	
	Escribir "Promedio de los numeros pares: ", a2[0]
	Escribir "Promedio de los numeros impares: ", a2[1]
FinFuncion

Funcion ejercicio_c3
	escribir "Presentar la siguiente secuencia 20 5 15 10 5 -5 0 "
	Definir n, num1, num2, m, m1, m2, i Como Entero
	Definir v1, v2 Como Logico
	n = 7
	num1 = 20
	num2 = 5
	v1 = Falso
	v2 = Falso
	Repetir
		si (n%2 == 0) Entonces
			Escribir num2
			si v2 = falso Entonces
				num2 = num2 + 5
				v2 = Verdadero
			SiNo
				num2 = num2 -15
				v2 = falso
			FinSi
		SiNo
			Escribir num1
			si v1 = Falso Entonces
				num1 = num1 - 5
				v1 = Verdadero
			SiNo
				num1 = num1 - 10
				v1 = falso
			FinSi
		FinSi
		//
		n = n - 1
	Hasta Que n = 0
FinFuncion

Funcion ejercicio_c4
	Definir arre_o, arre_p, arre_n, n, c, cn, cp Como Entero
	Definir vn, vp Como Logico
	Dimension arre_o[1000]; Dimension arre_p[1000]; Dimension arre_n[1000]
	c = 0
	vn = falso; vp = falso
	Escribir "Ingrese los n�meros del arreglo original: "
	Escribir "Ingrese 0 para detener el ingreso."
	Repetir
		leer n
		si n <> 0 Entonces
			arre_o[c] = n
			c = c + 1
		FinSi
	Hasta Que n = 0
	cn = 0; cp = 0
	Para n<-0 Hasta c-1 Con Paso 1 Hacer
		Si arre_o[n] < 0 Entonces
			vn = Verdadero
			arre_n[cn] = arre_o[n]
			cn = cn + 1
		SiNo
			vp = Verdadero
			arre_p[cp] = arre_o[n]
			cp = cp + 1
		FinSi
	FinPara
	Escribir "N�meros positivos: "
	si vp = Verdadero Entonces
		Para n = 0 Hasta cp - 1 Hacer
			Escribir Sin Saltar arre_p[n], " "
		FinPara
		Escribir " "
	SiNo
		Escribir "0"
	FinSi
	Escribir "N�meros negativos: "
	si vn = Verdadero Entonces
		Para n = 0 Hasta cn - 1 Hacer
			Escribir Sin Saltar arre_n[n], " "
		FinPara
		Escribir " "
	SiNo
		Escribir "0"
	FinSi
FinFuncion

Funcion ejercicio_c5
	Definir n, sum, c Como Entero
	c = 0; sum = 0
	Escribir "Ingrese los n�meros: "
	Escribir "Ingrese un n�mero negativo para detener el ingreso."
	Repetir
		leer n
		si n > 0 Entonces
			si (n % 2 == 0) Entonces
				sum = sum + n
			FinSi
			si (n % 3 == 0) Entonces
				c = c + 1
			FinSi
		FinSi
	Hasta Que n < 0
	Escribir "Suma total de los n�meros pares: ", sum
	Escribir "Cantidad total de n�meros m�ltiplos de 3: ", c
FinFuncion

Funcion ejercicio_c6
	Definir n, arre, sum Como Real
	Definir i, j Como Entero
	Dimension arre[1000]
	i = 0
	Escribir "Ingrese los n�meros: "
	Escribir "Ingrese 0 para detener el ingreso."
	Repetir
		leer n
		si n <> 0 Entonces
			arre[i] = n
			i = i + 1// el �ndice avanza, permitiendo guardar los n�meros en el arreglo
		FinSi
	Hasta Que n = 0
	sum = 0
	Para j<-0 Hasta i-1 Con Paso 1 Hacer
		sum = sum + (arre[j])^2
	FinPara
	Escribir "La suma de los n�meros elevados al cuadrado es: ", sum
FinFuncion
///

///ejercicios de caracteres del 7 al 14
funcion ejercicio_c7
	Definir n, cont, sum Como Real
	cont= 0; sum=0
	Escribir "Ingrese los n�meros: "
	Repetir
		leer n
		si n > 5 Entonces
			cont = cont + 1// se suma 1 al contador
		FinSi
		si (n % 5 = 0) Entonces
			sum = sum + n
		FinSi
	Hasta Que (n % 2 = 0)
	Escribir "Hay ",cont," n�meros mayores a 5"
	Escribir "La suma de los m�ltiplos a 5 es: ", sum
FinFuncion

Funcion ejercicio_c8
	Definir n, arre, sum Como Real
	Definir i, j Como Entero
	Dimension arre[1000]
	i = 0
	Escribir "Ingrese los n�meros: "
	Escribir "Ingrese un n�mero negativo para detener el ingreso."
	Repetir
		leer n
		si n >= 0 Entonces
			arre[i] = n
			i = i + 1// el �ndice avanza, permitiendo guardar los n�meros en el arreglo
		FinSi
	Hasta Que n < 0
	sum = 0
	Para j<-0 Hasta i-1 Con Paso 1 Hacer
		sum = sum + (arre[j])^3
	FinPara
	Escribir "La suma de los n�meros elevados al cubo es: ", sum
FinFuncion

Funcion ejercicio_c9
	Definir frase, ca Como Caracter
	definir i, l, cont Como Entero
	Escribir "Ingrese la frase: "; leer frase
	l = Longitud(frase)
	cont = 0
	Para i<-0 Hasta l-1 Con Paso 1 Hacer
		ca = SubCadena(frase,i,i)
		si ca == " " Entonces
			cont = cont + 1
		FinSi
	FinPara
	Escribir "En la frase ", frase, " hay ", (cont+1), " palabras."
FinFuncion

Funcion ejercicio_c10
	Definir n, arre Como Real
	Definir i, j Como Entero
	Dimension arre[1000]
	i = 0
	Escribir "Ingrese los n�meros: "
	Escribir "Ingrese un n�mero negativo para detener el ingreso."
	Repetir
		leer n
		si n >= 0 Entonces
			arre[i] = n
			i = i + 1// el �ndice avanza, permitiendo guardar los n�meros en el arreglo
		FinSi
	Hasta Que n < 0
	
	Para j<-0 Hasta i-1 Con Paso 1 Hacer
		arre[j] = arre[j] * 2
	FinPara
	
	Para j<-0 Hasta i-1 Con Paso 1 Hacer
		Escribir arre[j]
	FinPara
	
FinFuncion

Funcion ejercicio_c11
	Definir letra Como Caracter
	Definir cont Como Entero
	cont = 0
	Escribir "Ingrese los car�cteres: "
	Escribir "Ingrese un . para detener el ingreso"
	Repetir
		leer letra
		si letra = "x" Entonces
			cont = cont + 1
		FinSi
	Hasta Que letra = "."
	Escribir "Se ingresaron ",cont," x."
FinFuncion

Funcion ejercicio_c12
	definir arre, arre_p, n, c, i Como Entero
	Dimension arre[1000]
	Dimension arre_p[1000]
	Escribir "Ingrese los n�meros: "
	Escribir "Ingrese 0 para detener el ingreso."
	c = 0
	i = 0
	Repetir
		leer n
		si n <> 0 Entonces
			arre[c] = n 
			c = c + 1
			si n%2 == 0 & n <> 0 Entonces
				arre_p[i] = n
				i = i + 1
			FinSi
		FinSi
	Hasta Que n = 0
	
	Escribir "Los n�meros pares de arreglo son: "
	Para c<-0 Hasta (i-1) Con Paso 1 Hacer
		Escribir arre_p[c]
	FinPara
FinFuncion

Funcion ejercicio_c13
	Definir n1, n2, i Como Entero
	Escribir "Ingrese los dos n�meros: "; leer n1, n2
	Escribir "Los n�meros mayoress a 5 entre los n�meros ingresados son: "
	Para i<-n1 Hasta n2 Con Paso 1 Hacer
		si i > 5 Entonces
			Escribir Sin Saltar i, " "
		FinSi
	FinPara
	Escribir " "
FinFuncion

Funcion ejercicio_c14
	Definir n, c_g, c_ma, c_me, sum_g, sum_ma, sum_me Como Entero
	Escribir "Ingrese las edades: "
	Escribir "Ingrese 0 detener el ingreso."
	c_g = 0; c_ma = 0; c_me = 0
	sum_g = 0; sum_ma = 0; sum_me = 0
	Repetir
		leer n
		si n < 0 Entonces
			Escribir "Ingrese una edad v�lida!"
		SiNo
			si n == 0 Entonces
				n = 0
			SiNo
				c_g = c_g + 1
				sum_g = sum_g + n
				si n > 18 Entonces
					c_ma = c_ma + 1
					sum_ma = sum_ma + n
				SiNo
					c_me = c_me + 1
					sum_me = sum_me + n
				FinSi
			FinSi
		FinSi
	Hasta Que n = 0
	
	Escribir "El promedio general de las edades es: ", (sum_g/c_g)
	Escribir " "
	si c_ma == 0 Entonces
		Escribir "Hay ",c_ma," edades mayores a 18."
		c_ma = 1
		Escribir "El promedio general de las edades mayores a 18 es: ", (sum_ma/c_ma)
	SiNo
		Escribir "Hay ",c_ma," edades mayores a 18."
		Escribir "El promedio general de las edades mayores a 18 es: ", (sum_ma/c_ma)
	FinSi
	Escribir " "
	si c_me == 0 Entonces
		Escribir "Hay ",c_me," edades menores a 18."
		c_me = 1
		Escribir "El promedio general de las edades menores a 18 es: ", (sum_me/c_me)
	SiNo
		Escribir "Hay ",c_me," edades menores a 18."
		Escribir "El promedio general de las edades menores a 18 es: ", (sum_me/c_me)
	FinSi
FinFuncion
///
///ejercicios de caracteres del 15 al 23
Funcion ejercicio_c15
	Definir n, n1,i Como Entero
	Escribir "Ingrese el primer n�mero: "; Leer n
	Escribir "Ingrese el segundo n�mero: ";  leer n1
	
	Escribir "Los n�mero impares existentes en el rango dado son: "
	Para i<-(n+1) Hasta (n1-1) Con Paso 1 Hacer
		si i%2 <> 0 Entonces
			Escribir Sin Saltar i, " "
		FinSi
	Fin Para
	Escribir " "
FinFuncion


Funcion ejercicio_c16
	Definir arre, su, n_m, sum Como Real
	Definir c Como entero
	Dimension arre[10000]
	su = 0; c = 0
	Escribir "Ingrese los sueldos: "
	Escribir "Ingrese un n�mero negativo detener el ingreso."
	Repetir
		leer su
		si su >= 0 Entonces
			arre[c] = su
			c = c + 1
		FinSi
	Hasta Que su < 0
	n_m = arre[0]
	sum = n_m
	Para su<-1 Hasta c-1 Con Paso 1 Hacer
		si arre[su] > n_m Entonces
			n_m = arre[su]
		FinSi
		sum = sum + arre[su]
	FinPara
	Escribir "El sueldo m�s alto es: ",n_m
	Escribir "El promedio de los sueldos es: ",(sum/c)
FinFuncion

Funcion ejercicio_c17
	Definir f1,f2 Como Caracter
	Definir l1, l2, i Como Entero
	Escribir "Ingrese la primera frase: "; leer f1
	Escribir "Ingrese la segunda frase: "; leer f2
	l1 = Longitud(f1); l2 = Longitud(f2)
	
	si l1 = l2 Entonces
		Escribir "Las frases tienen la misma longitud"
	SiNo
		si l1 > l2 Entonces
			Escribir f1, " es la frase con mayor longitud."
		SiNo
			Escribir f2, " es la frase con mayor longitud."
		FinSi
	FinSi
	
finFuncion

Funcion ejercicio_c18
	Definir fra, le Como Caracter
	Definir lo, i, cont1, cont2, cont3, cont4 Como Entero
	Escribir "Ingrese la frase: "; leer fra
	lo = Longitud(fra)
	cont1 = 0; cont2 = 0; cont3 = 0; cont4 = 0
	Para i<-0 Hasta lo-1 Con Paso 1 Hacer
		le = Subcadena(fra,i,i)
		Segun le Hacer
			",":
				cont1 = cont1 + 1
			".":
				cont2 = cont2 + 1
			";":
				cont3 = cont3 + 1
			":": 
				cont4 = cont4 + 1
		FinSegun
	FinPara
	Escribir "La frase ", fra, " tiene: "
	Escribir cont1, " , "
	Escribir cont2, " . "
	Escribir cont3, " ; "
	Escribir cont4, " : "
	
FinFuncion

Funcion ejercicio_c19
	Definir fra, le Como Caracter
	Definir lo, i, cont_v, cont_c, cont_d Como Entero
	Escribir "Ingrese la frase: "; leer fra
	fra = Minusculas(fra)
	lo = Longitud(fra)
	cont_v = 0; cont_c = 0; cont_d = 0
	Para i<-0 Hasta lo-1 Con Paso 1 Hacer
		le = Subcadena(fra,i,i)
		si le = "a" | le = "e" | le = "i" | le = "o" | le = "u" Entonces
			cont_v = cont_v + 1
		SiNo
			si le >= "b" & le <= "z" Entonces
				cont_c = cont_c + 1
			SiNo
				si le >= "0" & le <= "9" Entonces
					cont_d = cont_d + 1
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "La frase ", fra, " tiene: "
	Escribir cont_v, " vocales."
	Escribir cont_c, " consonantes."
	Escribir cont_d, " d�gitos."
FinFuncion

Funcion ejercicio_c20
	Definir frase, ca Como Caracter
	definir i, l, cont Como Entero
	definir v Como Logico
	Escribir "Ingrese la frase: "; leer frase
	l = Longitud(frase)
	cont = 0
	v = falso
	Para i<-0 Hasta l-1 Con Paso 1 Hacer
		ca = SubCadena(frase,i,i)
		si i == 0 & ca == " " Entonces
			cont = 0
			v = Verdadero
		FinSi
		si i == (l-1) Entonces
			v = Verdadero
		FinSi
		si v = Verdadero & (ca >= "a" & ca <= "z") Entonces
			v = Falso
			//cont = cont + 1
		SiNo
			si v = falso & ca = " " Entonces
				cont = cont + 1
				v = Verdadero
			FinSi
		FinSi
	FinPara
	Escribir "En la frase ", frase, " hay ", (cont+1), " palabras."
FinFuncion

Funcion ejercicio_c21
	Definir n, le Como caracter
	Definir lo, sum, i, le1 Como Entero
	Escribir "Ingrese su n�mero de c�dula: "; leer n
	sum = 0
	lo = Longitud(n)
	Para i<-0 Hasta lo-1 Con Paso 1 Hacer
		le = Subcadena(n,i,i)
		le1 = ConvertirANumero(le)
		sum = sum + le1
	FinPara
	Escribir "La suma de los d�gitos del n�meros de c�dula es: ", sum	
FinFuncion

Funcion ejercicio_c22
	Definir fra, fra_i, le Como Caracter
	Definir l Como Entero
	Escribir "Ingrese la frase: "; leer fra
	fra_i = ""
	Para l<-(Longitud(fra)-1) Hasta 0 Con Paso -1 Hacer
		le = Subcadena(fra,l,l)
		fra_i = fra_i + le
	FinPara
	si fra == fra_i Entonces
		Escribir "La frase ",fra," es pal�ndroma."
	SiNo
		Escribir "La frase ",fra," no es pal�ndroma."
	FinSi
	
FinFuncion

Funcion ejercicio_c23
	Definir fra, le, le_b Como Caracter
	Definir lo, i, arre, c Como Entero
	Dimension arre[1000]
	Escribir "Ingrese la cadena: "; leer fra
	lo = Longitud(fra)
	c = 0
	Escribir "Ingrese el caracter a buscar: "; leer le_b
	Para i<-0 Hasta (lo-1) Con Paso 1 Hacer
		le = Subcadena(fra,i,i)
		si le == le_b Entonces
			arre[c] = i
			c = c + 1
		FinSi
	FinPara
	Escribir "El caracter ",le_b, " se encuentra en las posiciones: "
	Para i<-0 Hasta c-1 Con Paso 1 Hacer
		Escribir Sin Saltar arre[i], " "
	FinPara
	Escribir " "
FinFuncion
////

///Ejercicios de car�cteres
//Funcion que ejecutar� los ejercicios de car�cteres del 1 al 11
Funcion eje_car_1_11// esto debo hacer con los ejercicios de caracteres y la otra mitad de ejercicios de n�meros
	Definir menu_car_1_11 Como caracter// defiimos el arreglo que gaudar� las opciones del men�
	Definir nu Como Entero// esta variable va leer la opcion que digite el usuario
	Definir v Como Logico// banderilla para saber que se el men� y la elecci�n de algoritmos a ejecutar termine, finalizando el bucle repetir y volviendo al men� n�meros
	v = Falso// mientras sea falso se repetir� el bucle repetir
	Dimension menu_car_1_11[4]// dimensionamos el men�
	menu_car_1_11[0] = " 1. Secuencia 1                     2. Promedio pares e impares    3. Secuencia 2"
	menu_car_1_11[1] = " 4. N�meros positivo y negativos    5. Suma de Pares               6. Cuadrado de n�meros"
	menu_car_1_11[2] = " 7. Mayores a 5                     8. Suma de cubos               9. Contar palabras"
	menu_car_1_11[3] = "10. Cambiar por doble              11. Contar X                   12. Salir"
	Repetir
		Borrar Pantalla
		Escribir "Ejercicios del 1 al 11"
		presentar_menu_ejer(menu_car_1_11,4)// presentamos el men�
		Escribir " "
		Escribir "Ingrese el �ndice del algortimo a ejecutar: "
		leer nu
		Segun nu Hacer
			1:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 1"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c1
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			2:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 2"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c2
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			3:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 3"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c3
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			4:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 4"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c4
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			5:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 5"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c5
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			6:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 6"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c6
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			7:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 7"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c7
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			8:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 8"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c8
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			9:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 9"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c9
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			10:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 10"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c10
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			11:// del 1 al 11 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 11"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c11
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla	
			12:// si presiona 12 es para salir, en este caso regresar al men� n�meros
				v = Verdadero// se termina el ciclo
				Borrar Pantalla
				Escribir "Regresando al men� de ejercicios de caracteres..."
				Esperar 1 Segundos
			De Otro Modo:// en caso de que el usuario ingrese un �ndice incorreto
				Escribir "Ingrese un �ndice v�lido."
				Esperar 1 Segundos
		FinSegun
	Hasta Que v = Verdadero
FinFuncion

Funcion eje_car_12_23// esto debo hacer con los ejercicios de caracteres y la otra mitad de ejercicios de n�meros
	Definir menu_car_12_23 Como caracter// defiimos el arreglo que gaudar� las opciones del men�
	Definir nu Como Entero// esta variable va leer la opcion que digite el usuario
	Definir v Como Logico// banderilla para saber que se el men� y la elecci�n de algoritmos a ejecutar termine, finalizando el bucle repetir y volviendo al men� n�meros
	v = Falso// mientras sea falso se repetir� el bucle repetir
	Dimension menu_car_12_23[5]// dimensionamos el men�
	menu_car_12_23[0] = " 12. Solo n�meros pares          13. Mayores a 5 (rango)    14. Promedio de edades"
	menu_car_12_23[1] = " 15. Valores impares (rango)     16. Sueldos UNEMI          17. Frase mayor"
	menu_car_12_23[2] = " 18. Contador de signos          19. Contador               20. Contador de palabras"
	menu_car_12_23[3] = " 21. Suma de d�gitos (C�dula)    22. Pal�ndroma             23. Posici�n car�cter"
	menu_car_12_23[4]=  " 24. Salir"
	
	Repetir
		Borrar Pantalla
		Escribir "Ejercicios del 12 al 23"
		presentar_menu_ejer(menu_car_12_23,5)// presentamos el men�
		Escribir " "
		Escribir "Ingrese el �ndice del algortimo a ejecutar: "
		leer nu
		Segun nu Hacer
			12:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 12"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c12
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			13:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 13"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c13
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			14:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 14"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c14
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			15:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 15"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c15
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
			16:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 16"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c16
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			17:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 17"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c17
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			18:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 18"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c18
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			19:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 19"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c19
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			20:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 20"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c20
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			21:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 21"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c21
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			22:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 22"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c22
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla	
				
			23:// del 12 al 23 ir�an las funciones de los ejercicios
				Borrar Pantalla
				Escribir "Ejercicio 23"// aqu� llamar�amos a la funci�n del ejercicio correspondiente
				ejercicio_c23
				Escribir "Presione la tecla enter para volver al men� anterior..."// volvemos al men� de los ejercicios de 1 al 11
				Esperar Tecla
				
			24:// si presiona 24 es para salir, en este caso regresar al men� n�meros
				v = Verdadero// se termina el ciclo
				Borrar Pantalla
				Escribir "Regresando al men� de ejercicios de caracteres..."
				Esperar 1 Segundos
			De Otro Modo:// en caso de que el usuario ingrese un �ndice incorreto
				Escribir "Ingrese un �ndice v�lido."
				Esperar 1 Segundos
		FinSegun
	Hasta Que v = Verdadero
FinFuncion
///


Algoritmo menu_pruebas
	Definir menu_principal, menu_numeros, menu_caracter Como Caracter
	Definir x, ind_menu Como Entero
	//generamos el men� principal
	Dimension menu_principal[5]
	menu_principal[0] = "****     Men� principal     ****"
	menu_principal[1] ="1. Ejercicios de n�meros"
	menu_principal[2] ="2. Ejercicios de car�cteres"
	menu_principal[3] ="3. Salir"
	menu_principal[4] =" "
	//
	//generamos el men� de los ejercicios de n�meros
	Dimension menu_numeros[5]
	menu_numeros[0]="****     Ejercicios num�ricos     ****"
	menu_numeros[1]="1. Ejercicio del 1 al 11"
	menu_numeros[2]="2. Ejercicio del 12 al 21"
	menu_numeros[3]="3. Salir"
	menu_numeros[4]=" "
	//
	//generamos el men� de los ejercicios de car�cteres
	Dimension menu_caracter[5]
	menu_caracter[0]="****     Ejercicios de caracteres     ****"   
	menu_caracter[1]="1. Ejercicios del 1 al 11"
	menu_caracter[2]="2. Ejercicios del 12 al 23"
	menu_caracter[3]="3. Salir"
	menu_caracter[4]=" "
	//
	
	Repetir
		x=presentar_menu(menu_principal,5)// esta variable toma el valor que me indique el usuario en la funcion "presentar_menu" y avanzar al men� indicado
		Segun x Hacer
			1:
				Repetir// se repite hasta que "ind_menu" sea 4, ind_menu es la variable que guarda la opci�n dada por el usuario en la funcion "presentar_menu"
				ind_menu = presentar_menu(menu_numeros,5)
				Segun ind_menu Hacer
					1:// cada uno de estos me representar�an los ejercicio o de ser el caso de realizar segregaci�n, los men�s correspondientes
						Borrar Pantalla
						Escribir "Ejercicios del 1 al 11"//hicimos segregacion
						eje_1_11// llamamos a la funcion que crea el men� y a su vez ejecuta los ejercicios del 1 al 11
						//volvemos al men� n�meros
					2:// cada uno de estos me representar�an los ejercicio o de ser el caso de realizar segregaci�n, los men�s correspondientes
						Borrar Pantalla
						Escribir "Ejercicios del 12 al 21"//hicimos segregacion
						eje_12_21// llamamos a la funcion que crea el men� y a su vez ejecuta los ejercicios del 1 al 11
						//volvemos al men� n�meros
					3:// salimos del men�
						Borrar Pantalla
						Escribir "Saliendo del men� de ejercicios num�ricos ..."
						Esperar 1 Segundos
				FinSegun
			Hasta Que ind_menu = 3
		2:
			Repetir
				ind_menu = presentar_menu(menu_caracter,5)
				Segun ind_menu Hacer
					1:
						Borrar Pantalla
						Escribir "Ejercicios del 1 al 11"
						eje_car_1_11
					2:
						Borrar Pantalla
						Escribir "Ejercicios del 12 al 23"
						eje_car_12_23
					3:
						Borrar Pantalla
						Escribir "Saliendo del men� de ejercicios de caracteres..."
						Esperar 1 Segundos
				FinSegun
			Hasta Que ind_menu = 3
		3://salimos del sistema
			Borrar Pantalla
			Escribir "Saliendo del sistema..."
			Esperar 2 Segundos
	FinSegun
	Hasta Que x = 3
	
FinAlgoritmo

