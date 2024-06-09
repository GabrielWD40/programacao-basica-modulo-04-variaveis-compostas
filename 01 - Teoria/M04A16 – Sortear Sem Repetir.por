programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro vetor[10], P = 0 
		logico encontrou // variável que ajudaráa ver se números repetidos foram encontrados.

		//codificação do nosso software:
		escreva("\nOs números sorteados foram: \n")
		enquanto(P < U.numero_elementos(vetor)){
			vetor[P] = sorteia(1,10)
			encontrou = falso
			para(inteiro auxiliar = 0; auxiliar < P; auxiliar ++){
				se(vetor[auxiliar] == vetor[P]){
					encontrou = verdadeiro 
					pare
				}
			}

			//ALIMENTADOR DO LOOPING QUANDO O VALOR NÃO É REPETIDO:
			se (nao encontrou){
				escreva( vetor[P] + " → ")
				U.aguarde(400)
				P++
			}	
		}escreva("FIM!\n\n")



		//Fazendo um vetor com 20 posições sem repetições:
		inteiro vetorzao[20], Contador = 0
		logico achei_repetido = falso

		enquanto(Contador < U.numero_elementos(vetorzao)){
			vetorzao[Contador] = sorteia(0,30)
			achei_repetido = falso

			//início da verificação de valores repetidos:
			para(inteiro verificador = 0; verificador < Contador; verificador ++){
				se(vetorzao[verificador] == vetorzao[Contador]){
					achei_repetido = verdadeiro
					pare
				}
			}

			//a verificação abaixo deve ser colocada sozinha, senão dá bug:
			se(achei_repetido == falso){
				escreva(vetorzao[Contador] + " → ")
				U.aguarde(350)	
				Contador ++
			}
		}escreva("fim!\n\n")


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */