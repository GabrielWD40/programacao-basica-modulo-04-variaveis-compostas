programa
{
	/*Desafio que o professor Gustavo recomendou:
	
	Faça um algoritmo que gere uma matriz 4x4 e some as linhas e depois só as colunas

	1 2 3
	4 5 6
	7 8 9

	Soma linha 0: 1 + 2 + 3 = 6
	Soma coluna 0: 1 + 4 + 7 = 12
	*/

	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar: 
		inteiro matriz[4][4], soma_linha = 0, soma_coluna = 0 
		
		//codificação do nosso software:
		escreva("\nSoma de linhas e colunas de uma matriz:\n\n")
		//início do preenchimento da Matriz:
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			escreva("\t")
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				matriz[linha][coluna] = sorteia(1,10)
				escreva(matriz[linha][coluna] + " ")			
			}escreva("\n")
		}escreva("\n")
		
		//somando as linhas:
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			soma_linha = 0
			escreva("somando a linha [" + linha + "]: ")
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				escreva(matriz[linha][coluna])
				soma_linha += matriz[linha][coluna]
				se(coluna != U.numero_colunas(matriz) - 1){
					escreva(" + ")
				}senao{
					escreva(" = ")
				}
			}
			escreva(soma_linha)
			escreva("\n")
		}
		escreva("\n\n")

		//somando as colunas
		para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
			escreva("Somando a coluna [" + coluna + "]: ")
			soma_coluna = 0
			para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
				escreva(matriz[linha][coluna])
				soma_coluna += matriz[linha][coluna]
				se(linha != U.numero_linhas(matriz) -1){
					escreva(" + ") 	
				}senao{
					escreva(" = ")
				}
			}
			escreva(soma_coluna)
			escreva("\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1296; 
 * @DOBRAMENTO-CODIGO = [23];
 * @PONTOS-DE-PARADA = 64;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 19, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */