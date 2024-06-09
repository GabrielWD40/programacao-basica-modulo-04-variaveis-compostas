programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro matriz [4][4], soma_segunda_linha = 0, soma_terceira_coluna = 0
		
		//codificação do nosso software:
		//geração da matriz: 
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				matriz[linha][coluna] = sorteia(1,10)
				escreva(matriz[linha][coluna] + "\t")
				U.aguarde(100)
			}
			escreva("\n")
		}
		

		//Mostrando a segunda linha da matriz: 
		escreva("\nMostrando a segunda linha da matriz: \n\n")
		para(inteiro coluna = 0 ; coluna < U.numero_linhas(matriz) ; coluna ++){
			escreva("\t" + matriz[1][coluna])
			soma_segunda_linha += matriz[1][coluna]	
		}escreva("\nSoma dos valores = " + soma_segunda_linha)

		//Mostrando a terceita coluna da matriz:
		escreva("\n\nMostrando a terceira coluna da matriz: \n")
		para(inteiro linha = 0; linha < U.numero_colunas(matriz); linha ++){
			escreva("\t" + matriz[linha][2] + "\n")
			soma_terceira_coluna += matriz[linha][2]
		}escreva("Soma dos valores = " + soma_terceira_coluna)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1158; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */