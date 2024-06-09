programa
{
	/*Exercício 60: Crie um vetor com 10 posições, os índices deverão ser preenchidos com valores sorteados aleatóriamente.
	  Ao final da excução seu programa deve ser capaz de 
	    - Mostrar as posições dos números pares
	    - Mostrar a soma de topdos os pares
	    
	    - Mostrar a posição dos valores ímpares
	    - Mostrar a quantidade de ímpares
	    
	    - Mostrar o maior valor sorteado
	    - Mostrar as posições que ele apareceu
	    - Mostrar quantas vezes ele apareceu*/

	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro valores_sorteados [10], 
		soma_pares = 0, 
		qntd_impares = 0, 
		maior_valor = 0, aparicoes_maior = 0

		//início da codificação do nosso software:
		escreva("\nExercício 60 - Sorteando e analisando valores em vetores\n")

		//início do sorteio de valores:
		escreva("\nSorteando 10 valores...\n")
		para(inteiro contador = 0; contador < U.numero_elementos(valores_sorteados); contador++){
			valores_sorteados[contador] = sorteia(1,10)
			escreva(valores_sorteados[contador] + ".. ")
			U.aguarde(600)
		}
		escreva("\n\nIniciando a análise dos números sorteados...")
		U.aguarde(1500)
		escreva("\n\n==========================================================\n\n")

		//início da análise dos dados:
		//início da exibição e soma dos números pares sorteados
		escreva("---> Valores PARES detectados nas posições: ")
		para(inteiro posicao = 0; posicao < U.numero_elementos(valores_sorteados); posicao ++){
			se(valores_sorteados[posicao] % 2 == 0){
				escreva(posicao + " ")
				soma_pares += valores_sorteados[posicao]
			}
		}escreva("\n    ---> Soma dos pares = " + soma_pares)
		escreva("\n\n==========================================================\n\n")
		U.aguarde(800)

		//início da exibição e quantidade dos números ímpares sorteados
		escreva("---> Valores ÍMPARES detectados nas posições: ")
		para(inteiro posicao = 1; posicao < U.numero_elementos(valores_sorteados); posicao ++){
			se(valores_sorteados[posicao] % 2 != 0){
				escreva(posicao + " ")
				qntd_impares ++	
			}
		}escreva("\n    ---> Quantidade de ímpares: " + qntd_impares)
		escreva("\n\n==========================================================\n\n")
		U.aguarde(800)

		//início da exibição dos dados do maior valores sorteado
		para(inteiro posicao = 0; posicao < U.numero_elementos(valores_sorteados); posicao ++){
			se(posicao == 0){
				maior_valor = valores_sorteados[posicao]		 
			}senao{
				se(valores_sorteados[posicao] > maior_valor){
					maior_valor = valores_sorteados[posicao]
				}
			}
		}escreva("---> Maior valor sorteado: " + maior_valor)
		//início da contagem de quantas vezes o maior aparceu no programa: 
		escreva("\n    ---> Apreceu nas posições: ")
		para(inteiro contador = 0; contador < U.numero_elementos(valores_sorteados); contador ++){
			se(valores_sorteados[contador] == maior_valor){
				escreva( contador + " ")
				aparicoes_maior ++
			}
		}escreva("\n    ---> Total de ocorrências:  " + aparicoes_maior)
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */