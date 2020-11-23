//Genera el número para los eventos
Funcion nAl <- Probs 
	Definir nAl Como Entero;
	nAl = Aleatorio(1, 1000);
Fin Funcion

//Evento para que aparezca el mago
Funcion eve = funcion_mago
	Definir thn, aInt, nAdiv, op, nAl, punt, eve Como Entero;
	nAl = Probs();
	Si (nAl > 100 y nAl < 130) o (nAl > 300 y nAl <340) o (nAl > 420 y nAl < 469) o (nAl > 789 y nAl < 800)
		thn = Aleatorio(1, 4);
		nAl = Aleatorio(1, 50);
		aInt = Aleatorio(2,8);
		Escribir "Sientes un aura extraña proviniendo de las paredes...";
		Esperar 3 Segundos;
		Escribir "-Hoohoola, caballero. Soy un mago y vengo a jugar contigo";
		Esperar thn Segundos;
		Escribir "-Estoy pensando un númerito entre el 1 y el...";
		Esperar thn Segundos;
		Escribir "-50, si adivinas te daré un Reregalito";
		Escribir "-Pero cuentas con... hmmm..."; 
		Esperar thn Segundos;
		Escribir "-",aInt," intentos, así que, ¿quieres juegar conmigo?";
		Escribir "1.- Sí";
		Escribir '2.- No";
		Leer op;
		Escribir "";
		Si op = 1
			Escribir "-Empezemos, ¡jijijijij!";
			Repetir
				aInt = aInt - 1;
				Leer nAdiv;
				Si nAdiv = nAl
					Escribir "-¡Lo lograste, caballero! Toma esto como recompensa";
					eve = 1;
				SiNo
					Si nAdiv > nAl
						Escribir "-¡Fallaste, muy para la derecha!";
					SiNo
						Escribir "-¡Fallaste, muy para la izquierda!';
					FinSi
					Si aInt = 0
						Escribir "-Ya no titienes intentos. Pero descuida, nos volveremos a encontrar, adiosito. ¡Jijijiji!";
					sino
						Escribir "-Uy, jijiji. Aún cuentas con ", aInt, " intentos, sigues en juego";
					FinSi
				FinSi
			Hasta Que aInt = 0 o nAdiv = nAl
			Escribir "";
		SiNo
			Escribir "-Está bien, cababallero, pero me verás de nuevo en algún momento";
			eve = punt + 5;
		FinSi
	FinSi
FinFuncion

//Funcion aumentar pociones
Funcion pocs = funcion_pocs
	Definir pocs, nAl Como entero;
	nAl = Probs();
	Escribir nAl;
	Si (nAl >= 1 y nAl <= 14)o(nAl >= 30 y nAl <= 50)o(nAl>= 76 y nAl <= 100)o(nAl >= 169 y nAl<=280) o (nAl >=496 y nAl <= 662) o (nAl >= 932 y nAl <= 986)
		Escribir "Recibiste una poción";
		pocs = pocs + 1;
		Escribir "Ahoras tienes ", pocs, " pociones";
		Escribir "";
	FinSi
FinFuncion



//Función aumentar pociones G


//Función aumentar ataque

//Función aumentar armadura








//Inicio de la aventura
Algoritmo PseCrawler
	Definir vida, punt, op, nAl, eve, pocs, pocCur, pocsG, pocGCur, armd, ataq Como Entero;
	pocsG = 3;
	pocGCur = 15;
	pocCur = 5;
	pocs = 5;
	vida = 100;
	punt = 0;
	armd = 0;
	ataq = 7;
	Escribir "Instrucciones: Escribe el numero que se indique en la consola para interactuar.";
	Escribir "";
	Escribir "Eres un caballero atrapado en una mazmorra, camina hacía tu dirección preferida para terminar tu aventura.";
	Escribir "";
	Esperar 2 Segundos;
	Repetir
		Escribir "";
		Escribir "¿Qué hacer?';
		Escribir '1.- Caminar';
		Escribir '2.- Revisar inventario';
		Escribir '3.- Revisar puntaje";
		Escribir "";
		Leer op;
		Segun op
			1:
				Escribir "1.- Norte";
				Escribir "2.- Este";
				Escribir "3.- Sur";
				Escribir "4.- Oeste";
				Escribir "";
				Leer op;
				Segun op
					1:
						punt = punt + 1;
						eve = funcion_mago();
						punt = punt + eve; 
						
						
						
						
						
						
						
						
						
						
						
						
						Si eve = 1
							pocs = funcion_pocs();
						FinSi
					2:
						punt = punt + 1;
					3:
						punt = punt + 1;
					4:
						punt = punt + 1;
						
				FinSegun
			2:
				Escribir "Cuentas con: ";
				Escribir vida, " puntos de vida";
				Escribir armd, " puntos de armadura";
				Escribir ataq, " puntos de ataque";
				Escribir pocs, " pociones";
				Escribir pocsG, " pociones G";
				Escribir "";
				Escribir "1.- Beber alguna poción";
				Escribir "2.- Salir de inventario";
				Leer op;
				Si op = 1
					Repetir
						Escribir "";
						Escribir "1.- Beber poción";
						Escribir "2.- Beber poción G";
						Escribir "3.- Salir de inventario";
						Escribir "";
						Leer op;
						Segun op
							1:
								Si pocs > 0
									pocs = pocs - 1;
									vida = vida + pocCur;
									Escribir "Ahora tienes ", pocs, " pociones en el inventario";
									Escribir "Ahora cuentas con ", vida, " puntos de vida";
								SiNo
									Escribir "Ya no tienes pociones";
								FinSi
							2:	
								Si pocsG > 0
									pocsG = pocsG - 1;
									vida = vida + pocGCur;
									Escribir "Ahora tienes ", pocsG, " pociones G en el inventario";
									Escribir "Ahora cuentas con ", vida, " puntos de vida";
								SiNo
									Escribir "Ya no tienes pociones G";
								FinSi
						FinSegun
					Hasta Que op = 3
				FinSi
			3:
				Escribir "Tu puntaje es de ", punt, " puntos";
				Si punt >= 75
					Escribir "Ya casi llegas con el Dragón";
				SiNo
					Si punt >= 45
						Escribir "Aún falta para llegar con el Dragón';
					SiNo
						Escribir "Te falta mucho para llegar con el Dragón";
					FinSi
				FinSi
		FinSegun
		//No sé si el evento seguirá siendo un número mayor a 0 para cuando termine el repetir pero mejor me aseguro con esto
		eve = 0;
	Hasta Que vida <= 0 o punt >= 100
	
FinAlgoritmo
