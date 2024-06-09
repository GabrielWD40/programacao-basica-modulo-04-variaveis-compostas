programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilziar: 
		inteiro matriz [8][8]

		//codificação do nosso software:
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				matriz[linha][coluna] = sorteia(1,20)
				escreva(matriz[linha][coluna] + "\t")
				U.aguarde(350)
			}
			escreva("\n")
		}escreva("\nfim!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 445; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */