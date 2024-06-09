programa
{
	/*Exercício 65 - Soma das colunas da matriz
		
		Esse algoritmo deve ser capaz gerar valores entre 1 e 10 para cada índice da matriz.
		Depois, precisaremos somar cada coluna e entregar o resultado ao usuário. Exemplo:

		1  2  3  4 
		5  6  7  8
		9 10 11 12

		Soma da coluna 0: 1 + 5 + 9 = 15 	*/
	
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro matriz [4][4], soma = 0

		//codificação do nosso software:	
		escreva("\nSOMA DE COLUNAS DA MATRIZ\n")
		escreva("\nSorteando valores...\n\n")
		U.aguarde(1500)

		//preenchimento dos índices: 
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna++){
				matriz[linha][coluna] = sorteia(1, 10)
				escreva("\t" + matriz[linha][coluna])
			}escreva("\n")
		}escreva("\n========================================================\n")

		//início da soma das colunas:
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			escreva("Somando a coluna [" + linha + "]: ")
			soma = 0
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				escreva( matriz[coluna][linha])
				soma += matriz[coluna][linha]
				//condicional para o sinal de mais ou sinal de =
				se(coluna != U.numero_colunas(matriz) - 1){
					escreva("  +  ")		
				}senao{
					escreva("  =  ")
				}
			}
			escreva("" + soma)
			U.aguarde(500)
			escreva("\n")			
		}escreva("========================================================\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */