algoritmo "mapa"
//ACAD�MICO: LUCAS RAFAEL DA SILVA
//RA: 22001488-5
//CURSO: BACHARELADO EM ENGENHARIA DE SOFTWARE
//DISCIPLINA: ALGORITMOS E L�GICA DE PROGRAMA��O I
//SOFTWARE DESIGNADO A VERIFICAR O CONTROLE DE ABASTECIMENTO DAS AERONAVES ANTES DOS VOOS

funcao rotaTotal (mainkm, altkm: real): real
inicio
	retorne (mainkm + altkm) * 1.3
fimfuncao

funcao flightFuel (totalkm, media: real): real
inicio
	retorne totalkm * media
fimfuncao

var
	MEDIA, FUEL_MAX, MAIN_KM, ALT_KM, AERO_FUEL : real
inicio
	escreval("M�dia da aeronave em litros por km: ")
	leia(MEDIA)
	escreval("Capacidade m�xima do tanque da aeronave (L): ")
	leia(FUEL_MAX)
	escreval("Total de km do trecho principal: ")
	leia(MAIN_KM)
	escreval("Total de km do trecho alternativo: ")
	leia(ALT_KM)
	escreval("Combust�vel no tanque da aeronave (L): ")
	leia(AERO_FUEL)

	se flightFuel(rotaTotal(MAIN_KM, ALT_KM), MEDIA) <= FUEL_MAX entao
		escreval("*****************************************")
		escreval("Voo Aprovado, bom voo!")
		escreval("*****************************************")
		escreval("Rota principal � de ", MAIN_KM, "km")
		escreval("Rota alternativa � de ", ALT_KM, "km")
		escreval("Rota total com a margem de seguran�a (30%) � de ", rotaTotal(MAIN_KM, ALT_KM), "km")
		escreval("Combust�vel necess�rio para o trecho � de ", flightFuel(rotaTotal(MAIN_KM, ALT_KM), MEDIA) ,"L")
		se AERO_FUEL < flightFuel(rotaTotal(MAIN_KM, ALT_KM),MEDIA) entao
			escreval("Voc� precisa abastecer ", flightFuel(rotaTotal(MAIN_KM, ALT_KM),MEDIA) - AERO_FUEL,"L.")
		fimse
	senao
		escreval("*****************************************")
		escreval("Voo Reprovado, reveja seu planejamento.")
		escreval("*****************************************")
	fimse
fimalgoritmo