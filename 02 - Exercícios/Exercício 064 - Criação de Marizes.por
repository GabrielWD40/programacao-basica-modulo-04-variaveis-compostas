programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//Declaração de variáveis:
		inteiro Matriz [4][4], soma = 0

		//Codificação do nosso software:
		escreva("\nExercício 64 - Somador de linhas\n")
		escreva("\nA Matriz gerada foi: \n\n")
		//preenchimento dos índices da matriz:s
		para(inteiro linha = 0; linha < U.numero_linhas(Matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(Matriz) ; coluna ++){
				Matriz[linha][coluna] = sorteia(1,10)
				escreva("\t" + Matriz[linha][coluna])
				//U.aguarde(350)				
			}
			escreva("\n")
		}
		escreva("\n============================================================\n")

		//Exibição das somas das linhas:
		
		para(inteiro linha = 0; linha < U.numero_linhas(Matriz); linha++){
			soma = 0
			escreva("Somando a linha " + linha + ":  ")
			para(inteiro coluna = 0; coluna < U.numero_colunas(Matriz); coluna ++){
				
				//soma dos valores contidos numa linha:
				soma += Matriz[linha][coluna]
				escreva(Matriz[linha][coluna])

				//condição de geração de caracteres
				se(U.numero_colunas(Matriz) == (coluna + 1)){
					escreva("")
				}senao{escreva(" + ")}
			}
			escreva(" = " + soma)	
			escreva("\n")	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 69; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Matriz, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */